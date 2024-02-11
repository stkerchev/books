package com.example.emitterdemo.web;

import com.example.emitterdemo.service.GameService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.task.TaskExecutor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyEmitter;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

@RestController
public class GameController {

    private final GameService gameService;
    private final TaskExecutor taskExecutor;

    public GameController(GameService gameService, @Qualifier("applicationTaskExecutor") TaskExecutor taskExecutor) {
        this.gameService = gameService;
        this.taskExecutor = taskExecutor;
    }

    /*
    * Preparing request to http://localhost:8080/games/chunk
    *   Trying 127.0.0.1:8080...
    * Connected to localhost (127.0.0.1) port 8080 (#0)

    > GET /games/chunk HTTP/1.1
    > Host: localhost:8080
    > Accept: * /*

    * Mark bundle as not supporting multiuse

    < HTTP/1.1 200
    < Transfer-Encoding: chunked
    < Date: Sun, 11 Feb 2024 07:58:25 GMT


    * Received 54 B chunk
    * Received 56 B chunk
    * Received 58 B chunk
    * Received 5 B chunk
    * Connection #0 to host localhost left intact
    */
    @GetMapping("/games/chunk")
    public ResponseBodyEmitter getGamesChunked() {
        var emitter = new ResponseBodyEmitter();
        taskExecutor.execute(() -> {
                    var games = gameService.findAll();
                    try {
                        for (var game : games) {
                            emitter.send(game);
                            Thread.sleep(1000);
                        }
                        emitter.complete();
                    } catch (Exception ex) {
                        emitter.completeWithError(ex);
                    }
                }

        );
        return emitter;
    }

    /*
    * Preparing request to http://localhost:8080/games/events
    *   Trying 127.0.0.1:8080...
    * Connected to localhost (127.0.0.1) port 8080 (#2)

    > GET /games/events HTTP/1.1
    > Host: localhost:8080
    > User-Agent: insomnia/8.6.1
    > Accept: * /*

    * Mark bundle as not supporting multiuse

    < HTTP/1.1 200
    < Content-Type: text/event-stream
    < Transfer-Encoding: chunked
    < Date: Sun, 11 Feb 2024 08:14:17 GMT


    * Received 53 B chunk
    * Received 54 B chunk
    * Received 7 B chunk
    * Received 53 B chunk
    * Received 56 B chunk
    * Received 7 B chunk
    * Received 52 B chunk
    * Received 58 B chunk
    * Received 7 B chunk
    * Received 5 B chunk
    * Connection #2 to host localhost left intact
    */

    @GetMapping("/games/events")
    public ResponseBodyEmitter getGamesEvents() {
        var emitter = new SseEmitter();
        taskExecutor.execute(() -> {
            var games = gameService.findAll();
            try {
                for (var game : games) {
                    var data = SseEmitter.event()
                            .id(String.valueOf(game.hashCode()))
                            .name(game.name())
                            .reconnectTime(1000)
                            .data(game)
                            .build();
                    emitter.send(data);
                    Thread.sleep(1000);
                }
                emitter.complete();
            } catch (Exception ex) {
                emitter.completeWithError(ex);
            }
        });
        return emitter;
    }

    /*
    BODY:

    id:-2027584925
    event:someName1
    retry:1000
    data:{"id":"2","name":"someName1","link":"someLink1"}

    id:-1978935229
    event:someName2
    retry:1000
    data:{"id":"343","name":"someName2","link":"someLink2"}

    id:-697132795
    event:someName3
    retry:1000
    data:{"id":"54355","name":"someName3","link":"someLink3"}
     */
}

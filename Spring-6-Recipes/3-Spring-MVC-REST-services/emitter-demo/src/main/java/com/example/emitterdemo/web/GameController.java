package com.example.emitterdemo.web;

import com.example.emitterdemo.service.GameService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.task.TaskExecutor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyEmitter;

@RestController
@RequestMapping("/games")
public class GameController {

    private final GameService gameService;
    private final TaskExecutor taskExecutor;

    public GameController(GameService gameService, @Qualifier("applicationTaskExecutor") TaskExecutor taskExecutor) {
        this.gameService = gameService;
        this.taskExecutor = taskExecutor;
    }

    // test with http://localhost:8080/games
    @GetMapping
    public ResponseBodyEmitter getRestGames() {
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
}

package com.example.emitterdemo.service;

import java.util.Objects;

public class Game {

    private final String id;
    private final String name;
    private final String link;

    public Game(String id, String name, String link) {
        this.id = id;
        this.name = name;
        this.link = link;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getLink() {
        return link;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Game game)) return false;
        return Objects.equals(id, game.id) && Objects.equals(name, game.name) && Objects.equals(link, game.link);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, link);
    }
}

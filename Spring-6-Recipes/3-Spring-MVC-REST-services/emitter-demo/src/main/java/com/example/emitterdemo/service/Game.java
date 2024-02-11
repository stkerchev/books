package com.example.emitterdemo.service;

import java.util.Objects;

public record Game(String id, String name, String link) {

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Game game)) return false;
        return Objects.equals(id, game.id) && Objects.equals(name, game.name) && Objects.equals(link, game.link);
    }

}

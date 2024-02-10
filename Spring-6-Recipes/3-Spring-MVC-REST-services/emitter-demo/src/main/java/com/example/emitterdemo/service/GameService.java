package com.example.emitterdemo.service;

import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

@Service
public class GameService {

    public Collection<Game> findAll(){
        return List.of(
                new Game("2", "someName1", "someLink1"),
                new Game("343", "someName2", "someLink2"),
                new Game("54355", "someName3", "someLink3"));
    }
}

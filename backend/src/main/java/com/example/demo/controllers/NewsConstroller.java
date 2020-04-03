package com.example.demo.controllers;

import com.example.demo.model.Article;
import com.example.demo.repository.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class NewsConstroller {

    @Autowired
    ArticleRepository articleRepository;

    @GetMapping("/")
    public List<Article> home() {
        return articleRepository.findAll();
    }


    @GetMapping("/article/{id}")
    public Article getArticleById(@PathVariable("id") Long id) {
        return articleRepository.findById(id).get();
    }

    @PostMapping("/article/add")
    public Article addArticle(@RequestBody Article newArticle) {
        return articleRepository.saveAndFlush(newArticle);
    }
}

package com.xycode.janebook.controller;


import com.xycode.janebook.model.TCollection;
import com.xycode.janebook.service.CollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class CollectionController {

    @Autowired
    CollectionService collectionService;

    @PostMapping("/collection")
    public String addCollection(@RequestBody TCollection collection){
        return collectionService.addCollection(collection);
    }

    @PutMapping("/collection")
    public String updateCollection(@RequestBody TCollection collection){
        return collectionService.updateCollection(collection);
    }

    @DeleteMapping("/collection/{id}")
    public String delCollection(@PathVariable Integer id){
        return collectionService.delCollection(id);
    }

    @GetMapping("/collection/{id}")
    public TCollection getCollection(@PathVariable("id") Integer id){
        return collectionService.getCollection(id);
    }

    @GetMapping("collections/{pagenum}/{pagesize}")
    public List<TCollection> getCollectionsByPage(@PathVariable Integer pagenum, @PathVariable Integer pagesize){
        return collectionService.getCollectionsPage(pagenum,pagesize);
    }

}

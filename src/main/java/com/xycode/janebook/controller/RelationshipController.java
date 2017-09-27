package com.xycode.janebook.controller;

import com.xycode.janebook.model.TRelationship;
import com.xycode.janebook.service.RelationshipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class RelationshipController {

    @Autowired
    RelationshipService relationshipService;

    @PostMapping("/relationship")
    public String addRelationship(@RequestBody TRelationship relationship){
        return relationshipService.addRelationship(relationship);
    }

    @PutMapping("/relationship")
    public String updateRelationship(@RequestBody TRelationship relationship){
        return relationshipService.updateRelationship(relationship);
    }

    @DeleteMapping("/relationship/{id}")
    public String delRelationship(@PathVariable Integer id){
        return relationshipService.delRelationship(id);
    }

    @GetMapping("/relationship/{id}")
    public TRelationship getRelationship(@PathVariable("id") Integer id){
        return relationshipService.getRelationship(id);
    }

    @GetMapping("relationships/{pagenum}/{pagesize}")
    public List<TRelationship> getRelationshipsByPage(@PathVariable Integer pagenum, @PathVariable Integer pagesize){
        return relationshipService.getRelationshipsPage(pagenum,pagesize);
    }

}

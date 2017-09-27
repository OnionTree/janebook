package com.xycode.janebook.controller;




import com.xycode.janebook.model.TBlacklist;
import com.xycode.janebook.service.BlackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class BlackListController {

    @Autowired
    BlackService blackService;

    @PostMapping("/blacklist")
    public String addBlackList(TBlacklist blacklist){
        return blackService.addBlackList(blacklist);
    }

    @DeleteMapping("/blacklist/{id}")
    public String delBlackList(@PathVariable Integer id){
        return blackService.delBlackList(id);
    }

    @PutMapping("/blacklist")
    public String updateBlackList(@RequestBody TBlacklist blacklist){
        return blackService.updateBlackList(blacklist);
    }


    @GetMapping("/blacklist/{userid}")
    public List<TBlacklist> getBlackLists(@PathVariable String userid){
        return blackService.getBlackLists(userid);
    }
}

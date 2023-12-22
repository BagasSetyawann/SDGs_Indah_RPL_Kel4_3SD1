/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package example.indah.controllers;

import example.indah.entities.Target;
import example.indah.entities.Tujuan;
import example.indah.repositories.TargetRepository;
import example.indah.repositories.TujuanRepository;
import jakarta.validation.Valid;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author chand
 */
@RestController
@RequestMapping("/api/target")
public class TargetController {

    @Autowired
    private TargetRepository targetRepository;
    @Autowired
    private TujuanRepository tujuanRepository;

    @GetMapping
    @SuppressWarnings("empty-statement")
    public List<Target> getAll() {
        return targetRepository.findAll();
    }

    @GetMapping("/{id}")
    @SuppressWarnings("empty-statement")
    public Target getById(@PathVariable Long id) {
        return targetRepository.findById(id).orElse(null);
    }
    
    @GetMapping("/tujuan/{id}")
    @SuppressWarnings("empty-statement")
    public Target[] getByIdTujuan(@PathVariable Long id) {
        Tujuan tujuan = tujuanRepository.findById(id).orElse(null);
        return targetRepository.findByTujuan(tujuan);
    }

    @PostMapping
    public Target add(@Valid @RequestBody Target target) {
        return targetRepository.save(target);
    }

    @PutMapping("/{id}")
    public Target update(@PathVariable Long id, @Valid @RequestBody Target target) {
        target.setId(id);
        return targetRepository.save(target);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        targetRepository.deleteById(id);
    }
}

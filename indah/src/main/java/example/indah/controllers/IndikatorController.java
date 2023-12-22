/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package example.indah.controllers;

import example.indah.entities.Indikator;
import example.indah.entities.Target;
import example.indah.repositories.IndikatorRepository;
import example.indah.repositories.TargetRepository;
import jakarta.validation.Valid;
import java.util.List;
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
@RequestMapping("/api/indikator")
public class IndikatorController {

    @Autowired
    private IndikatorRepository indikatorRepository;
    @Autowired
    private TargetRepository targetRepository;

    @GetMapping
    @SuppressWarnings("empty-statement")
    public List<Indikator> getAllRoles() {
        return indikatorRepository.findAll();
    }

    @GetMapping("/{id}")
    @SuppressWarnings("empty-statement")
    public Indikator getRoleById(@PathVariable Long id) {
        return indikatorRepository.findById(id).orElse(null);
    }
    
    @GetMapping("/{id}/target")
    @SuppressWarnings("empty-statement")
    public Indikator[] getByIdTujuan(@PathVariable Long id) {
        Target target = targetRepository.findById(id).orElse(null);
        return indikatorRepository.findByTarget(target);
    }

    @PostMapping
    public Indikator addRole(@Valid @RequestBody Indikator role) {
        return indikatorRepository.save(role);
    }

    @PutMapping("/{id}")
    public Indikator updateRole(@PathVariable Long id, @Valid @RequestBody Indikator role) {
        role.setId(id);
        return indikatorRepository.save(role);
    }

    @DeleteMapping("/{id}")
    public void deleteRole(@PathVariable Long id) {
        indikatorRepository.deleteById(id);
    }
}

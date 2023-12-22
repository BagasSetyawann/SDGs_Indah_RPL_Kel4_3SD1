package example.indah.repositories;

import example.indah.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author chand
 */
public interface RoleRepository extends JpaRepository<Role, Long> {
}
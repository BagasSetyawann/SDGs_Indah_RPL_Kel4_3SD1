/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package example.indah.repositories;

import example.indah.entities.Status;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author chand
 */
public interface StatusRepository extends JpaRepository<Status, Long>{
    
}

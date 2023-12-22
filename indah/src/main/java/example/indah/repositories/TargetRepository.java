/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package example.indah.repositories;

import example.indah.entities.Target;
import example.indah.entities.Tujuan;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author chand
 */
public interface TargetRepository extends JpaRepository<Target, Long> {
    Target[] findByTujuan(Tujuan id);
}

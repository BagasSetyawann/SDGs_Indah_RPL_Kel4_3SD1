/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package example.indah.repositories;

import example.indah.entities.Dataset;
import example.indah.entities.Indikator;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author chand
 */
public interface DatasetRepository extends JpaRepository<Dataset, Long> {
    Dataset[] findByIndikator(Indikator indikator);
}

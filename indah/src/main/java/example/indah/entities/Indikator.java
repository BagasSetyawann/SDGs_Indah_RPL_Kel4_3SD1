/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package example.indah.entities;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.antlr.v4.runtime.misc.NotNull;

/**
 *
 * @author chand
 */
@Entity
@Getter
@Setter
@Data
public class Indikator {@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String nama;
    
    @Column(nullable = false)
    private String nomor;
    
    private String deskripsi;
    
    @ManyToOne()
    @JoinColumn(nullable = false)
    private Target target;
    
    
    @JsonProperty("target")
    private void unpackNested(Long id) {
        this.target = new Target();
        target.setId(id);
    }
}

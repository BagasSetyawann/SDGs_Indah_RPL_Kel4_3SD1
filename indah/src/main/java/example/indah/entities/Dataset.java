/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package example.indah.entities;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.Basic;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import java.util.Date;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import jakarta.validation.constraints.NotNull;

/**
 *
 * @author chand
 */
@Entity
@Getter
@Setter
@Data
public class Dataset {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    @NotNull
    private String nama;
    private String deskripsi;
    private String lokasi;
    private String file;
    private Date createdAt;

    @ManyToOne
    @JoinColumn(nullable = false)
    @NotNull
    private Status status;
    private String keterangan;

    @ManyToOne
    @JoinColumn(nullable = false)
    @NotNull
    private Indikator indikator;

    @JsonProperty("indikator")
    private void unpackNested(Long id) {
        this.indikator = new Indikator();
        indikator.setId(id);
    }
    
    @JsonProperty("status")
    private void unpackNestedStatus(Long id) {
        this.status = new Status();
        indikator.setId(id);
    }
}

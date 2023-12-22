/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package example.indah.entities;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author chand
 */
@Entity
@Getter
@Setter
@Data
public class Target {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    @NotBlank(message = "Nama tidak boleh kosong")
    private String nama;

    @Column(nullable = false)
    @NotNull(message = "Nomor tidak boleh kosong")
    private String nomor;

    private String deskripsi;

    @ManyToOne()
    @NotNull(message = "Tujuan tidak boleh kosong")
    @JoinColumn(nullable = false)
    private Tujuan tujuan;

    @JsonProperty("tujuan")
    private void unpackNested(Long id) {
        this.tujuan = new Tujuan();
        tujuan.setId(id);
    }
}

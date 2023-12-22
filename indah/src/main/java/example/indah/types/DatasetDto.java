/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package example.indah.types;

import com.fasterxml.jackson.annotation.JsonProperty;
import example.indah.entities.Indikator;
import example.indah.entities.Status;
import jakarta.persistence.Basic;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.NotNull;
import java.util.Date;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author chand
 */
@Getter
@Setter
@Data
public class DatasetDto {
    private String nama;
    private String deskripsi;
    private String lokasi;
    private Date createdAt;
    private Date updatedAt;
    private Status status;
    private String keterangan;
    private Long indikator;
}

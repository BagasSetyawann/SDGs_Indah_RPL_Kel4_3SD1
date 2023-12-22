/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package example.indah.types;

import jakarta.persistence.Column;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author chand
 */
@Data
@Getter
@Setter
public class TujuanDto {
    private Long id;

    @Column(nullable = false)
    @NotNull
    private String nama;
    @Column(nullable = false)
    @NotNull
    private Integer nomor;
    
    private MultipartFile gambar;
    
    private String deskripsi;
    
}

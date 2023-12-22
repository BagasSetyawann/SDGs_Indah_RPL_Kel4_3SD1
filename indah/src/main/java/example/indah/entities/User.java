/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package example.indah.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
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
public class User {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    @NotNull(message = "Username tidak boleh kosong")
    private String username;
    
    @Column(nullable = false)
    @NotNull(message = "Nama Instansi tidak boleh kosong")
    private String nama_instansi;
    
    @Column(nullable = false)
    @NotNull(message = "Email tidak boleh kosong")
    @Email(message = "Email tidak sesuai")
    private String email;
    
    @Column(nullable = false)
    @NotNull(message = "Password tidak boleh kosong")
    private String password;
    
    @ManyToOne
    @NotNull(message = "Role tidak boleh kosong")
    @JoinColumn(nullable = false)
    private Role role;
}

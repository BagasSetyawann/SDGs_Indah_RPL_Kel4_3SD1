/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package example.indah.types;

import lombok.Data;

/**
 *
 * @author chand
 */
@Data
public class LoginResult {

    private Long id;
    private String username;
    private String token;
    private String role;
    private String nama_instansi;

    public LoginResult(Long id, String username, String role, String nama_instansi, String token) {
        this.id = id;
        this.username = username;
        this.role = role;
        this.nama_instansi = nama_instansi;
        this.token = token;
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package example.indah.controllers;

import example.indah.entities.Tujuan;
import example.indah.repositories.TujuanRepository;
import example.indah.types.TujuanDto;
import jakarta.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author chand
 */
@RestController
@RequestMapping("/api/tujuan")
public class TujuanController {

    @Autowired
    private TujuanRepository tujuanRepository;
    private static final String UPLOAD_DIR = "uploads/tujuan";
    private static final List<String> ALLOWED_EXTENSIONS = Arrays.asList("png", "jpg", "webp");

    @GetMapping
    @SuppressWarnings("empty-statement")
    public List<Tujuan> getAllTujuans() {
        return tujuanRepository.findAll();
    }

    @GetMapping("/{id}")
    @SuppressWarnings("empty-statement")
    public Tujuan getTujuanById(@PathVariable Long id) {
        return tujuanRepository.findById(id).orElse(null);
    }

    @PostMapping
    @SuppressWarnings("empty-statement")
    public ResponseEntity addTujuan(@Valid @ModelAttribute TujuanDto role,@Valid  @RequestParam("gambar") MultipartFile file) {
        if (file.isEmpty()) {
            return new ResponseEntity<>("Pilih file untuk diupload.", HttpStatus.BAD_REQUEST);
        }

        // Validasi ekstensi file
        String originalFilename = file.getOriginalFilename();
        String fileExtension = originalFilename.substring(originalFilename.lastIndexOf(".") + 1).toLowerCase();

        if (!ALLOWED_EXTENSIONS.contains(fileExtension)) {
            return new ResponseEntity<>("Jenis file tidak diizinkan. Hanya file Gambar yang diperbolehkan.", HttpStatus.BAD_REQUEST);
        }

        try {
            // Tentukan lokasi penyimpanan file
            String uploadDirPath = System.getProperty("user.dir") + File.separator + UPLOAD_DIR;
            File uploadDir = new File(uploadDirPath);

            // Jika direktori tidak ada, buat direktori
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            // Simpan file di lokasi yang diinginkan
            File uploadedFile = new File(uploadDir, originalFilename);
            FileUtils.writeByteArrayToFile(uploadedFile, file.getBytes());

            // Di sini, kita hanya mencetak informasi file
            System.out.println("File berhasil diupload ke: " + uploadedFile.getAbsolutePath());
            
            Tujuan data = new Tujuan();
            
            data.setNama(role.getNama());
            data.setDeskripsi(role.getDeskripsi());
            data.setNomor(role.getNomor());
            data.setGambar(originalFilename);

            return new ResponseEntity<>(tujuanRepository.save(data), HttpStatus.OK);
        } catch (IOException e) {
            return new ResponseEntity<>("Gagal menambahkan data.", HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @PutMapping("/{id}")
    public Tujuan updateTujuan(@PathVariable Long id, @Valid @RequestBody Tujuan role) {
        role.setId(id);
        return tujuanRepository.save(role);
    }

    @DeleteMapping("/{id}")
    public void deleteTujuan(@PathVariable Long id) {
        tujuanRepository.deleteById(id);
    }
}

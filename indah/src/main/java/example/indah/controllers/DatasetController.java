/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package example.indah.controllers;

import example.indah.entities.Dataset;
import example.indah.entities.Indikator;
import example.indah.entities.Status;
import example.indah.repositories.DatasetRepository;
import example.indah.repositories.IndikatorRepository;
import example.indah.repositories.StatusRepository;
import example.indah.types.DatasetDto;
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
@RequestMapping("/api/dataset")
public class DatasetController {

    @Autowired
    private DatasetRepository datasetRepository;
    @Autowired
    private IndikatorRepository indikatorRepository;
    @Autowired
    private StatusRepository statusRepository;

    private static final String UPLOAD_DIR = "uploads/dataset";
    private static final List<String> ALLOWED_EXTENSIONS = Arrays.asList("csv");

    @GetMapping
    @SuppressWarnings("empty-statement")
    public List<Dataset> getAllds() {
        return datasetRepository.findAll();
    }

    @GetMapping("/{id}")
    @SuppressWarnings("empty-statement")
    public Dataset getDatasetById(@PathVariable Long id) {
        return datasetRepository.findById(id).orElse(null);
    }
    
    @GetMapping("/{id}/indikator")
    @SuppressWarnings("empty-statement")
    public Dataset[] getByIdTujuan(@PathVariable Long id) {
        Indikator target = indikatorRepository.findById(id).orElse(null);
        return datasetRepository.findByIndikator(target);
    }

    @PostMapping
    public ResponseEntity addTujuan(@Valid @ModelAttribute DatasetDto dataset,@Valid @RequestParam("file") MultipartFile file) {
        if (file.isEmpty()) {
            return new ResponseEntity<>("Pilih file untuk diupload.", HttpStatus.BAD_REQUEST);
        }

        // Validasi ekstensi file
        String originalFilename = file.getOriginalFilename();
        String fileExtension = originalFilename.substring(originalFilename.lastIndexOf(".") + 1).toLowerCase();

        if (!ALLOWED_EXTENSIONS.contains(fileExtension)) {
            return new ResponseEntity<>("Jenis file tidak diizinkan. Hanya file CSV yang diperbolehkan.", HttpStatus.BAD_REQUEST);
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
            System.out.println(dataset.getIndikator());
            Dataset _dataset = new Dataset();
            Indikator indikator = new Indikator();
            Status status = new Status();
            
            status.setId(Long.valueOf(1));
            indikator.setId(dataset.getIndikator());

            _dataset.setNama(dataset.getNama());
            _dataset.setDeskripsi(dataset.getDeskripsi());
            _dataset.setLokasi(dataset.getLokasi());
            _dataset.setCreatedAt(dataset.getCreatedAt());
            _dataset.setKeterangan(dataset.getKeterangan());
            _dataset.setIndikator(indikator);
            _dataset.setFile(originalFilename);
            _dataset.setStatus(status);

            return new ResponseEntity<>(datasetRepository.save(_dataset), HttpStatus.OK);
        } catch (IOException e) {
            return new ResponseEntity<>("Gagal menambahkan data.", HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @PutMapping("/{id}")
    public Dataset updateDataset(@PathVariable Long id, @Valid @RequestBody Dataset dataset) {
        dataset.setId(id);
        return datasetRepository.save(dataset);
    }
    
    @PostMapping("/publish/{id}")
    public Dataset setPublish(@PathVariable Long id) {
        Dataset dataset = datasetRepository.findById(id).orElse(null);
        Status status = statusRepository.findById((long) 2).orElse(null);
        dataset.setStatus(status);
        return datasetRepository.save(dataset);
    }
    

    @DeleteMapping("/{id}")
    public void deleteDataset(@PathVariable Long id) {
        datasetRepository.deleteById(id);
    }
}

<template>
  <div v-if="data">

    <!-- Header End -->
    <div class="container-xxl py-5 bg-dark page-header-1 mb-5">
      <div class="container my-5 pt-5 pb-4">
        <h1 class="display-3 text-white mb-3 animated slideInDown">
          {{ data.indikator.target.tujuan.nama }}
        </h1>
        <nav aria-label="breadcrumb">
          <p class="rincian">
            {{ data.indikator.target.tujuan.deskripsi }}
          </p>
        </nav>
      </div>
    </div>
    <!-- Header End -->

    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0" style="z-index: 0;">
      <router-link to="/sdgs-tujuan" class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
        <h1 class="gambar">
          TUJUAN {{ data.indikator.target.tujuan.nomor }}
        </h1>
      </router-link>
      <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse d-flex justify-content-center" id="navbarCollapse">
        <div class="navbar-nav mx-auto p-4 p-lg-0">
          <router-link :to="'/sdgs/' + data.indikator.target.tujuan.nomor" class="nav-item nav-link"
            style="margin: 0 50px;">Target</router-link>
          <router-link :to="'/sdgs/indikator/' + data.indikator.id" class="nav-item nav-link"
            style="margin: 0 50px;">Indikator</router-link>
          <router-link :to="'/sdgs/dataset/' + data.id" class="nav-item nav-link active"
            style="margin: 0 50px;">Dataset</router-link>
        </div>
      </div>
    </nav>
    <!-- Navbar End -->

    <!--Topside-->
    <div class="container">
      <div class="row mt-4">
        <div class="col-md-4">
          <div class="card">
            <div class="card-header bg-success text-white">Judul</div>
            <div class="card-body">
              <p>{{ data.nama }}</p>
              <!-- ... (kode sebelumnya) ... -->

              <!-- Button for displaying visualization -->
              <div class="row mt-4">
                <div class="col-md-12 text-center">
                  <a @click="publikasi" id="visualizea" class="btn btn-success">
                    Publikasi Dataset
                  </a>
                </div>
              </div>

              <!-- ... (kode setelahnya) ... -->
            </div>
          </div>
        </div>

        <!-- Table Start -->
        <div class="col-md-8">
          <div class="card">
            <div class="card-header bg-success text-white">Data</div>
            <div class="card-body">
              <div class="row">
                <div class="container-fluid" id="table-container">
                  <table id="table" class="table table-striped" style="width: 100%">
                    <thead v-if="dataset">
                      <th v-for="item in Object.keys(dataset[0])" :key="item">{{ item }}</th>
                    </thead>
                    <tbody>
                      <tr v-for="item in dataset" :key="item">
                        <td v-for="index, key in Object.keys(dataset[0])" :key="key">{{ item[index] }}</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Table End -->
      </div>
    </div>
    <!--End Topside-->

    <!--Graphs-->
    <div id="section-to-print" class="container">
      <div class="row my-5">
        <div class="col-md-6">
          <div class="card">
            <div class="card-header bg-success text-white">Histogram</div>
            <div class="card-body">

              <!-- Create a dropdown for selecting the column -->
              <select id="columnDropdown"></select>

              <!-- Create a div where the graph will take place -->
              <div id="my_dataviz_histogram"></div>


            </div>
          </div>
        </div>

        <div class="col-md-6">
          <div class="card">
            <div class="card-header bg-success text-white">Bar Chart</div>
            <div class="card-body">
              <!-- Initialize a select button for selecting the year -->
              <select id="yearDropdown_bar"></select>

              <!-- Create a div where the graph will take place -->
              <div id="my_dataviz_bar"></div>

            </div>
          </div>
        </div>

        <div class="col-md-6">
          <div class="card">
            <div class="card-header bg-success text-white">Map Chart</div>
            <div class="card-body">
              <!-- Create an element where the map will take place -->
              <svg id="my_dataviz_peta" width="700" height="300"></svg>

              <!-- Add tooltip element -->
              <div id="tooltip_peta" class="tooltip_peta">
                <div class="tooltip_peta-header"></div>
                <div class="tooltip_peta-body"></div>
              </div>

              <!-- Add dropdown for selecting the year -->
              <select id="yearDropdown_peta">
                <option value="pop20">2020</option>
                <option value="pop21">2021</option>
                <option value="pop22">2022</option>
              </select>

            </div>
          </div>
        </div>

        <div class="col-md-6">
          <div class="card">
            <div class="card-header bg-success text-white">Line Chart</div>
            <div class="card-body">
              <!-- Initialize a select button -->
              <select id="selectButton"></select>

              <!-- Create a div where the graph will take place -->
              <div id="my_dataviz_line"></div>

            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="row mt-4">
      <div class="col-md-12 text-center">
        <button id="downloadButton" class="btn btn-success">
          Download Visualisasi
        </button>
      </div>
    </div>
    <input type="hidden" id="urlDataSet" :value="urldataset">

    <!--End Graphs-->

    <!-- Back to Top -->
    <!-- <component src="/js/table_spreadsheet.js" :is="'script'"></component> -->
    <!-- <component src="/js/main.js" :is="'script'"></component> -->
    <component src="/js/barchart.js" :is="'script'"></component>
    <component src="/js/mapchart.js" :is="'script'"></component>
    <component src="/js/linechart.js" :is="'script'"></component>
    <component src="/js/userpopup.js" :is="'script'"></component>
    <component src="/js/histogram.js" :is="'script'"></component>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: 'DatasetFlag',
  data() {
    return {
      data: null,
      dataset: null,
      urldataset: null
    };
  },
  mounted() {
    axios.get(process.env.VUE_APP_API_URL + '/api/dataset/' + this.$route.params.dataset).then(response => {
      this.data = response.data;
      this.urldataset = process.env.VUE_APP_API_URL + '/uploads/dataset/' + this.data.file;

      axios.get(process.env.VUE_APP_API_URL + '/uploads/dataset/' + this.data.file).then(response => {
        var jsonDataset = this.csvToJson(response.data)
        this.dataset = jsonDataset
      });
    });
  },
  methods: {
    publikasi() {
      axios.post(process.env.VUE_APP_API_URL + '/api/dataset/publish/' + this.$route.params.dataset, {}).then(response => {
        console.log(response)
        if(response.data)
          alert("Dataset berhasil dipublikasi")
      });
    },
    getDatasetUrl(filename) {
      return process.env.VUE_APP_API_URL + '/uploads/dataset/' + filename
    },
    csvToJson(csv) {
      const lines = csv.split("\n");
      const result = [];
      const headers = lines[0].split(",");

      for (let i = 1; i < lines.length; i++) {
        const obj = {};
        const currentLine = lines[i].split(",");

        for (let j = 0; j < headers.length; j++) {
          obj[headers[j]] = currentLine[j];
        }

        result.push(obj);
      }

      return result;
    }
  }
}

</script>

<style src="./css/visbar.css"></style>
<style>
@media print {
  body {
    visibility: hidden;
  }

  #section-to-print {
    visibility: visible;
    position: absolute;
    left: 0;
    top: 0;
  }
}
</style>
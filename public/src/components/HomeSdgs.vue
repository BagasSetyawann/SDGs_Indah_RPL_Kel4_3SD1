<template>
  <div>
    <!-- Carousel Start -->
    <div class="container-fluid p-0">
      <div class="owl-carousel header-carousel position-relative">
        <div class="owl-carousel-item position-relative">
          <img class="img-fluid" src="img/bg-header-index-1.jpg" alt="">
          <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
            style="background: rgba(43, 57, 64, .5);">
            <div class="container">
              <div class="row justify-content-start">
                <div class="col-10 col-lg-8">
                  <h1 class="display-3 text-white animated slideInDown mb-4">The 2030 Agenda for Sustainable Development
                    atau SDGs</h1>
                  <p class="fs-5 fw-medium text-white mb-4 pb-2"> SDGs terdiri dari 17 Tujuan dan 169 target dalam rangka
                    melanjutkan upaya dan pencapaian Millennium Development Goals (MDGs) yang berakhir akhir pada tahun
                    2015
                    lalu</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="owl-carousel-item position-relative">
          <img class="img-fluid" src="img/bg-header-index-2.jpg" alt="">
          <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
            style="background: rgba(43, 57, 64, .5);">
            <div class="container">
              <div class="row justify-content-start">
                <div class="col-10 col-lg-8">
                  <h1 class="display-3 text-white animated slideInDown mb-4">The 2030 Agenda for Sustainable Development
                    atau SDGs</h1>
                  <p class="fs-5 fw-medium text-white mb-4 pb-2"> SDGs terdiri dari 17 Tujuan dan 169 target dalam rangka
                    melanjutkan upaya dan pencapaian Millennium Development Goals (MDGs) yang berakhir akhir pada tahun
                    2015
                    lalu.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Carousel End -->

    <!-- Tujuan Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <h1 class="text-center mb-5 wow fadeInUp" data-wow-delay="0.1s">
          Tujuan SDGS
        </h1>
        <div class="row g-4" v-if="data">
          <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s" v-for="item in data" :key="item.id">
            <router-link class="cat-item rounded p-4" :to="'/sdgs/' + item.nomor">
              <img class="tujuan" :src="getImageUrl(item.gambar)" alt="Tujuan 1" style="width: 100px" />
              <h6 class="mb-3"><br>{{ item.nomor }}</h6>
              <p class="mb-0" style="color:black">{{ item.nama }}</p><br>
            </router-link>
          </div>
        </div>
      </div>
    </div>
    <!-- Tujuan End -->
  </div>
</template>
<script>
import axios from "axios"

export default {
  name: 'HomeSdgs',
  data() {
    return {
      data: null,
    };
  },
  mounted() {
    axios.get(process.env.VUE_APP_API_URL + '/api/tujuan').then(response => {
      this.data = response.data;
    });
  },
  methods: {
    getImageUrl(filename) {
      return process.env.VUE_APP_API_URL + '/uploads/tujuan/' + filename
    }
  }
}

</script>







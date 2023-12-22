<template>
    <div v-if="data">

        <!-- Header End -->
        <div class="container-xxl py-5 bg-dark page-header-1 mb-5" id="awal">
            <div class="container my-5 pt-5 pb-4">
                <h1 class="display-3 text-white mb-3 animated slideInDown">{{ data.target.tujuan.nama }}</h1>
                <nav aria-label="breadcrumb">
                    <p class="rincian">{{ data.target.tujuan.deskripsi }}</p>
                </nav>
            </div>
        </div>
        <!-- Header End -->

        <!-- Navbar Start -->
        <div class="sticky-top" style="z-index: 0;padding-top: 72px;margin-top:-72px">
            <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0" style="z-index: 0;">
                <router-link :to="'/sdgs/' + data.target.tujuan.nomor"
                    class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
                    <h1 class="gambar">
                        TUJUAN {{ data.target.tujuan.nomor }}
                    </h1>
                </router-link>
                <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse d-flex justify-content-center sticky-top" id="navbarCollapse">
                    <div class="navbar-nav mx-auto p-4 p-lg-0">
                        <router-link :to="'/sdgs/' + data.target.tujuan.nomor" class="nav-item nav-link"
                            style="margin: 0 50px;">Target</router-link>
                        <router-link :to="'/sdgs/indikator/' + data.id" class="nav-item nav-link active"
                            style="margin: 0 50px;">Indikator</router-link>
                        <router-link :to="'/sdgs/dataset/' + (datasets.length > 0 ? datasets[0].id : 1)"
                            class="nav-item nav-link" style="margin: 0 50px;">Dataset</router-link>
                    </div>
                </div>
            </nav>
        </div>
        <!-- Navbar End -->

        <!-- Job Detail Start -->
        <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="row gy-5 gx-4">
                    <div class="col-lg-8">
                        <div class="d-flex align-items-center mb-5">
                            <img class="flex-shrink-0 img-fluid border rounded"
                                :src="getImageUrl(data.target.tujuan.gambar)" alt="" style="width: 80px; height: 80px;">
                            <div class="text-start ps-4">
                                <h3 class="mb-3">{{ data.name }}</h3>
                                <span class="text-truncate me-3"><i class="fa fa-book text-success me-2"></i>Tujuan {{
                                    data.target.tujuan.nomor }}
                                    SDGs</span>
                            </div>
                        </div>

                        <div class="mb-5">
                            <h4 class="mb-3">Deskripsi</h4>
                            <p>{{ data.deskripsi }}</p>
                            <h4 class="mb-3">Dataset</h4>
                            <p>Berikut adalah dataset yang berkaitan dengan indikator:</p>
                            <ul class="list-unstyled" v-if="datasets">
                                <li v-for="dataset in datasets" :key="dataset.id">
                                    <i class="fa fa-angle-right text-success me-2"></i>
                                    <router-link :to="'/sdgs/dataset/' + dataset.id">{{ dataset.nama }}</router-link>
                                </li>
                            </ul>
                            <p v-if="datasets?.length === 0">Maaf, dataset belum tersedia.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Job Detail End -->
    </div>
</template>

<script>
import axios from "axios";

export default {
    name: 'IndikatorSdgs',
    data() {
        return {
            data: null,
            datasets: null
        };
    },
    mounted() {
        axios.get(process.env.VUE_APP_API_URL + '/api/indikator/' + this.$route.params.indikator).then(response => {
            this.data = response.data;

            axios.get(process.env.VUE_APP_API_URL + '/api/dataset/' + this.$route.params.indikator + "/indikator").then(response => {
                this.datasets = response.data.filter((item) => {
                    return item.status.id === 2
                });
            });
        });
    },
    methods: {
        getImageUrl(filename) {
            return process.env.VUE_APP_API_URL + '/uploads/tujuan/' + filename
        }
    }
}
</script>

<style src="./css/style.css"></style>
<template>
    <div v-if="data">
        <!-- Header End -->
        <div class="container-xxl py-5 bg-dark page-header-1 mb-5">
            <div class="container my-5 pt-5 pb-4">
                <h1 class="display-3 text-white mb-3 animated slideInDown">{{ data.nama }}</h1>
                <nav aria-label="breadcrumb">
                    <p class="rincian">{{ data.deskripsi }}</p>
                </nav>
            </div>
        </div>
        <!-- Header End -->

        <div class="sticky-top" style="z-index: 0;padding-top: 72px;margin-top:-72px">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand-lg bg-white navbar-light shadow p-0">
                <router-link :to="'/sdgs/' + this.$route.params.tujuan"
                    class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
                    <h1 class="gambar">
                        TUJUAN {{ data.nomor }}
                    </h1>
                </router-link>
                <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse d-flex justify-content-center" id="navbarCollapse">
                    <div class="navbar-nav mx-auto p-4 p-lg-0">
                        <router-link :to="'/sdgs/' + this.$route.params.tujuan" class="nav-item nav-link active"
                            style="margin: 0 50px;">Target</router-link>
                        <router-link :to="'/sdgs/indikator/' + targets[0].id" disabled class="nav-item nav-link"
                            style="margin: 0 50px;">Indikator</router-link>
                        <router-link to="/sdgs/dataset/1" class="nav-item nav-link" disabled
                            style="margin: 0 50px;">Dataset</router-link>
                    </div>
                </div>
            </nav>
        </div>
        <!-- Navbar End -->

        <!-- Jobs Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <h1 class="text-center mb-5 wow fadeInUp" data-wow-delay="0.1s">TARGET</h1>
                <div class="tab-class text-center wow fadeInUp" id="indicator-tabs" data-wow-delay="0.3s">
                    <ul class="nav nav-pills d-inline-flex justify-content-center border-bottom mb-5">
                        <li class="nav-item" v-for="item in targets" :key="item.id">
                            <a :class="'d-flex align-items-center text-start mx-3 pb-3 ' + ('#tab-' + item.nomor == active && 'ms-0 active')"
                                data-bs-toggle="pill" :href="'#tab-' + item.nomor" @click="onClick">
                                <h6 class="mt-n1 mb-0">{{ data.nomor }}.{{ item.nomor }}</h6>
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div v-for="item in targets" :key="item.id" :id="'#tab-' + item.nomor"
                            :class="'tab-pane fade show p-0 ' + ('#tab-' + item.nomor == active && 'active')">
                            <p class="rincian-target">
                                {{ item.deskripsi }}
                            </p>
                            <IndikatorList :tujuan="item.id"></IndikatorList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Jobs End -->

    </div>
</template>

<script>
import axios from "axios"
import IndikatorList from "./commons/IndikatorList"

export default {
    name: 'TujuanSdgs',
    components: { IndikatorList },
    data() {
        return {
            data: null,
            targets: null,
            active: "#tab-1"
        };
    },
    mounted() {
        axios.get(process.env.VUE_APP_API_URL + '/api/tujuan/' + this.$route.params.tujuan).then(response => {
            this.data = response.data;
            axios.get(process.env.VUE_APP_API_URL + '/api/target/tujuan/' + this.$route.params.tujuan).then(response => {
                this.targets = response.data;
            });
        });
    },
    methods: {
        onClick(e) {
            var tab = e.delegateTarget.getAttribute("href");
            this.active = tab
        }
    }
}
</script>
<style src="./css/style.css"></style>
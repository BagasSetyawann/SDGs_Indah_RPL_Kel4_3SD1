<template>
    <div v-if="data">
        <div class="job-item p-4 mb-4" v-for="item in data" :key="item.id">
            <div class="row g-4">
                <div class="col-sm-12 col-md-8 d-flex align-items-center">
                    <div class="text-start ps-4">
                        <h5 class="mb-3">{{ item.nama }}</h5>
                        <p>{{ item.deskripsi }}</p>
                    </div>
                </div>
                <div
                    class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
                    <div class="d-flex mb-3">
                        <router-link class="btn btn-success" :to="'/sdgs/indikator/'+item.id">Buka
                            Indikator</router-link>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>


<script>
import axios from "axios"

export default {
    name: 'IndikatorList',
    props: ['tujuan'],
    data() {
        return {
            data: null
        };
    },
    mounted() {
        axios.get(process.env.VUE_APP_API_URL + '/api/indikator/' + this.tujuan + "/target").then(response => {
            this.data = response.data;
        });
    },
    methods: {
    }
}
</script>
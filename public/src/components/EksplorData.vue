<template>
    <div>


        <!--Topside-->
        <div class="container">
            <div class="row mt-4">

                <!-- Table Start -->
                <div class="col-md-100">
                    <div class="card">
                        <div class="card-header bg-success text-white">
                            Data
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <table id="example" class="table table-striped" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>Nomor</th>
                                            <th>Dataset</th>
                                            <th>Indikator</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="dataset, key in data" :key="dataset.id">
                                            <td>{{ key + 1 }}</td>
                                            <td>{{ dataset.nama }}</td>
                                            <td>{{ dataset.indikator.nama }}</td>
                                            <td><router-link class="btn btn-success" :to="'/sdgs/dataset/' + dataset.id"
                                                    role="button">Lihat
                                                    Data</router-link></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Table End -->
            </div>
        </div>
        <!--End Topside-->

    </div>
</template>

<script>
import axios from "axios"

export default {
    name: 'ExplorData', data() {
        return {
            data: null
        };
    },
    mounted() {
        axios.get(process.env.VUE_APP_API_URL + '/api/dataset').then(response => {
            this.data = response.data.filter((item) => {
                return item.status.id === 2
            });
        })
    },
}
</script>

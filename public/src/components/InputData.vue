<template>
  <div>
    <!-- Form Start -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
      <div class="container">
        <div class="row gy-5 gx-4">
          <div class="col-lg-8">


            <div class="">
              <h4 class="mb-4">Input Dataset (*.csv)</h4>
              <form @submit="submit">
                <div class="row g-3">
                  <div class="col-12 col-sm-6">
                    <input v-model="form.nama" type="text" class="form-control" placeholder="Judul Dataset">
                  </div>
                  <div class="col-12 col-sm-6">
                    <select v-model="form.indikator" class="form-control bg-white" v-if="data">
                      <option :value="indikator.id" v-for="indikator in data" :key="indikator.id">{{
                        indikator.target.tujuan.nama }} / {{ indikator.target.nama }} / {{ indikator.nama }}</option>
                    </select>
                  </div>
                  <div class="col-12 col-sm-6">
                    <input @change="uploadFile" type="file" class="form-control bg-white" ref="file">
                  </div>
                  <div class="col-12">
                    <button class="btn btn-success w-100" type="submit">Ajukan Dataset</button>
                  </div>
                </div>
              </form>
            </div>
          </div>

        </div>
      </div>
    </div>
    <!-- Form End -->
  </div>
</template>

<script>
import { useAuth } from '@/store';
import axios from "axios"

export default {
  name: 'InputData', data() {
    return {
      data: null,
      form: {
        indikator: null,
        nama: null,
        file: null,
      }
    };
  },
  mounted() {
    axios.get(process.env.VUE_APP_API_URL + '/api/indikator').then(response => {
      this.data = response.data;
    })
  },
  methods: {
    async submit(e) {
      e.preventDefault()
      const { auth } = useAuth();
      this.user = auth.value

      const formData = new FormData();
      formData.append('file', this.form.file);
      formData.append('nama', this.form.nama);
      formData.append('indikator', this.form.indikator);

      const headers = { 'Content-Type': 'multipart/form-data' };

      try {
        var { data } = await axios.post(process.env.VUE_APP_API_URL + '/api/dataset', formData, { headers });
        if (data)
          alert("Data berhasil diinput")
      } catch (error) {
        if (error.response.data === "") {
          alert("Pastikan semua data telah diisi")
        } else {
          alert(error.response.data)
        }


      }
    },
    uploadFile() {
      this.form.file = this.$refs.file.files[0];
    }
  }
}
</script>

<style></style>
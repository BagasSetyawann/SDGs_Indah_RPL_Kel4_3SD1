<template>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div
          id="spinner"
          class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
          >
          <div
            class="spinner-border text-success"
            style="width: 3rem; height: 3rem"
            role="status"
          >
            <span class="sr-only">Loading...</span>
          </div>
        </div>
        <!-- Spinner End -->
  
        <!-- Form Start -->
        <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
          <div class="container">
              <div class="row gy-5 gx-4">
                  <div class="col-lg-8">
                      
      
                      <div class="">
                          <h4 class="mb-4">Modul ini bukan bagian dari pengembangan proyek.</h4>
                          
                      </div>
                  </div>
      
              </div>
          </div>
      </div>
      <!-- Form End -->
  
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-success btn-lg-square back-to-top"
          ><i class="bi bi-arrow-up"></i
        ></a>
        <component src="js/main.js" :is="'script'"></component>
        <component src="js/userpopup.js" :is="'script'"></component>
      </div>
</template>

<script>
export default {
    name: 'PagePengembangan'
}
</script>

<style>

</style>
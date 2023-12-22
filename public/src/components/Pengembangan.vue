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
  
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <router-link to="/" class="nav-item nav-link">Menu Utama</router-link>               
                </div>
            </div>
            <div class="collapse navbar-collapse" id="navbarCollapse">
            <router-link to="/login" class="btn btn-success text-light rounded-pill py-2 px-4 ms-3">Masuk</router-link>
            </div>
            <!-- header start -->
            <header>
              <div class="nav-icons" onclick="toggleMenu()">
                  <i class='bx bx-user'></i>
              
              </div>
            </header>
            <div class="sub-menu-wrap" id="subMenu" >
                <div class="sub-menu">
                    <div class="user-info text-center">
                        <i class='bx bxs-user-circle fa-6x'></i>
                        <h3>Vladimir Putin</h3>
                        <h5>Bappenas</h5>
                    </div>
                    <hr>

                    
                    <router-link to="" class="sub-menu-link">
                        <i class='bx bx-log-out fa-2x'></i>
                        <p>Logout</p>
                    </router-link>
                
                </div>
            </div>
            <!-- header end -->
        </nav>
        <!-- Navbar End -->
  
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
  
  
        <!-- Footer Start -->
        <div
          class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn"
          data-wow-delay="0.1s"
        >
          <div class="container py-5">
            <div class="row g-5">
              <div class="col-lg-3 col-md-6">
                <h5 class="text-white mb-4">Layanan Disediakan Oleh:</h5>
                <a href="bps.go.id"
                  ><img src="img/bps.png" alt="BPS" style="width: 250px"
                /></a>
              </div>
            </div>
          </div>
          <div class="container">
            <div class="copyright">
              <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                  &copy;
                  <a class="border-bottom" href="bps.go.id"
                    >Badan Pusat Statistik</a
                  >, All Right Reserved.
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Footer End -->
  
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
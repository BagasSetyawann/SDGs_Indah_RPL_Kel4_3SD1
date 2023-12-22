<template>
    <div class="container-xxl bg-white p-0">

        <!-- Service Start -->
        <div class="container-xxl py-5">
            <div class="container px-lg-5">
                <div class="section-title position-relative text-center mb-5 pb-2 wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="position-relative d-inline text-success ps-4">Layanan Kami</h6>
                    <h2 class="mt-2">Modul INDAH</h2>
                </div>
                <div class="row g-4">
                    <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                        <div class="service-item d-flex flex-column justify-content-center text-center rounded">
                            <div class="service-icon flex-shrink-0">
                                <i class="fas fa-chart-bar fa-2x"></i>
                            </div>
                            <h5 class="mb-3">Standar Data Statistik</h5>
                            <p>
                                Standar data statistik mengacu pada pedoman atau aturan yang ditetapkan untuk mengumpulkan, mengolah, dan menyajikan data statistik.</p>
                            <router-link to="/dev" class="btn px-3 mt-auto mx-auto text-success">Telusuri</router-link>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.3s">
                        <div class="service-item d-flex flex-column justify-content-center text-center rounded">
                            <div class="service-icon flex-shrink-0">
                                <i class="fas fa-chart-area fa-2x"></i>
                            </div>
                            <h5 class="mb-3">Metadata Statistik</h5>
                            <p>Metadata statistik adalah informasi yang memberikan konteks dan detail tambahan tentang data statistik.</p>
                            <router-link to="/dev" class="btn px-3 mt-auto mx-auto text-success">Telusuri</router-link>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.6s">
                        <div class="service-item d-flex flex-column justify-content-center text-center rounded">
                            <div class="service-icon flex-shrink-0">
                                <i class="fas fa-chart-line fa-2x"></i>
                            </div>
                            <h5 class="mb-3">Platform SSHI</h5>
                            <p>Data statistik hayati melibatkan informasi mengenai komponen-komponen yang berkaitan dengan aspek hayati.</p>
                            <router-link to="/dev" class="btn px-3 mt-auto mx-auto text-success">Telusuri</router-link>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                        <div class="service-item d-flex flex-column justify-content-center text-center rounded">
                            <div class="service-icon flex-shrink-0">
                                <i class="fas fa-chart-pie fa-2x"></i>
                            </div>
                            <h5 class="mb-3">SDGs</h5>
                            <p> SDGs adalah serangkaian tujuan pembangunan global untuk meningkatkan taraf kehidupan di seluruh dunia. </p>
                            <router-link to="/sdgs" class="btn px-3 mt-auto mx-auto text-success">Telusuri</router-link>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.6s">
                        <div class="service-item d-flex flex-column justify-content-center text-center rounded">
                            <div class="service-icon flex-shrink-0">
                                <i class="fas fa-align-center fa-2x"></i>
                            </div>
                            <h5 class="mb-3">SDKI</h5>
                            <p>Ini merujuk pada survei yang dilakukan di Indonesia untuk mengumpulkan data demografi dan kesehatan.</p>
                            <router-link to="/dev" class="btn px-3 mt-auto mx-auto text-success">Telusuri</router-link>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->
    </div>
</template>

<script>
export default {
    name: 'HomeIndah'
}
</script>

<style scoped src="./css/masuk.css"></style>

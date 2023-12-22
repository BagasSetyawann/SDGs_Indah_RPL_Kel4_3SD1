<template>
    <div>
        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Layanan Disediakan Oleh:</h5>
                        <a href="https://bps.go.id"><img src="/img/bps.png" alt="BPS" style="width:250px;"></a>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="https://bps.go.id">Badan Pusat Statistik</a>, All Right
                            Reserved.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-success btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        <component src="/js/main.js" :is="'script'"></component>
        <component src="/js/userpopup.js" :is="'script'"></component>
    </div>
</template>
<script>
export default {
    name: 'LayoutFooter'
}

</script>
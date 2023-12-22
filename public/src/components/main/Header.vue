<template>
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
        <router-link to="/sdgs" class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
            <h1 class="gambar">
                <img src="/img/SDG.jpg" alt="" style="width: 250px;">
            </h1>
        </router-link>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <router-link to="/" class="nav-item nav-link">Menu Utama</router-link>
                <router-link to="/sdgs" class="nav-item nav-link">Beranda</router-link>
                <router-link to="/sdgs/input" class="nav-item nav-link" v-if="user?.role == 'admin'">Input Data</router-link>
                <router-link to="/sdgs/flagging" class="nav-item nav-link"
                    v-if="user?.role == 'flagger'">Flagging</router-link>
                <router-link to="/sdgs/eksplor" class="nav-item nav-link">Eksplor Data</router-link>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarCollapse" v-if="!user">
            <router-link to="/login" class="btn btn-success text-light rounded-pill py-2 px-4 ms-3">Masuk</router-link>
        </div>
        <!-- header start -->
        <header>
            <div class="nav-icons me-3" onclick="toggleMenu()" v-if="user">
                <i class='bx bx-user'></i>

            </div>
        </header>
        <div class="sub-menu-wrap" id="subMenu" v-if="user">
            <div class="sub-menu">
                <div class="user-info text-center">
                    <i class='bx bxs-user-circle fa-6x'></i>
                    <h3>{{ user.username }}</h3>
                    <h5>{{ user.nama_instansi }}</h5>
                </div>
                <hr>


                <a @click="logout" class="cursor-pointer sub-menu-link">
                    <i class='bx bx-log-out fa-2x'></i>
                    <p>Logout</p>
                </a>

            </div>
        </div>
        <!-- header end -->
    </nav>
    <!-- Navbar End -->
</template>

<script>
import { useAuth } from '@/store';

export default {
    name: 'LayoutHeader',
    data() {
        return {
            user: null
        }
    },
    mounted() {
        const { auth } = useAuth();
        this.user = auth.value
    },
    methods: {
        logout() {
            const { removetAuth } = useAuth();
            removetAuth()
            window.location.href = "/"
        }
    }
}

</script>
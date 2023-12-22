<template>
  <div id="app">
    <div class="container-xxl bg-white p-0">
      <Header></Header>
      <router-view></router-view>
      <Footer></Footer>
    </div>
  </div>
</template>

<script>
import Header from './components/main/Header';
import Footer from './components/main/Footer';
export default {
  name: 'App',
  components: {
    Header,
    Footer,
  }
}
</script>

<style></style>
<style src="./components/css/visualisasi.css"></style>

<template>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" @submit="submit">
					<img src="images/logo.svg" alt="INDAH" style="width:200px;" class="rounded mx-auto d-block">
					<span class="login100-form-title p-b-43">
						<p style="font-size:16px;">Login Aplikasi</p>
					</span>

					<div class="wrap-input100 validate-input" data-validate="Username is required">
						<input v-model="username" class="input100" type="text" name="username">
						<span class="focus-input100"></span>
						<span class="label-input100">Username</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input v-model="password" class="input100" type="password" name="password">
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>

					<div class="flex-sb-m w-full p-t-3 p-b-32">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" style="background-color:green;">
							Login
						</button>
					</div>

				</form>

				<div class="login100-more" style="background-image: url('images/login.svg');">
				</div>
			</div>
		</div>
		<component src="js/mainlogin.js" :is="'script'"></component>
	</div>
</template>

<script>
import axios from "axios";
import { useAuth } from "../store";

export default {
	name: 'LoginIndah',
	data() {
		return {
			username: '',
			password: ''
		}
	},
	methods: {
		submit(e) {
			e.preventDefault()
			try {
				axios.post(process.env.VUE_APP_API_URL + '/api/auth/login', { username: this.username, password: this.password }).then(response => {
					const { setAuth } = useAuth();
					setAuth(response.data)
					window.location.href = "/"
				});
			} catch (error) {
				alert("Username & Password tidak sesuai")
			}
		}
	}
}
</script>

<style scoped src="./css/util.css"></style>
<style scoped src="./css/mainlogin.css"></style>

<style scoped src="./vendor/bootstrap/css/bootstrap.min.css"></style>
<style scoped src="./fonts/font-awesome-4.7.0/css/font-awesome.min.css"></style>
<style scoped src="./fonts/Linearicons-Free-v1.0.0/icon-font.min.css"></style>
<style scoped src="./vendor/animate/animate.css"></style>
<style scoped src="./vendor/css-hamburgers/hamburgers.min.css"></style>
<style scoped src="./vendor/animsition/css/animsition.min.css"></style>
<style scoped src="./vendor/select2/select2.min.css"></style>
<style scoped src="./vendor/daterangepicker/daterangepicker.css"></style>

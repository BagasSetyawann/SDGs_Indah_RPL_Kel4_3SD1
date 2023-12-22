import { ref } from 'vue';
const auth = ref(JSON.parse(localStorage.getItem("user")) ?? null); // <=== outside of function scope

export function useAuth() {
  const setAuth = (_user) => {
    auth.value = _user;
    localStorage.setItem("user", JSON.stringify(_user))
  };

  const removetAuth = () => {
    auth.value = null;
    localStorage.removeItem("user")
  };

  return { auth, setAuth,removetAuth };
}
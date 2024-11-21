// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: "2024-04-03",
  devtools: { enabled: true },
  css: ["@unocss/reset/tailwind.css", "~/assets/css/main.css"],
  modules: [
    "@nuxt/image",
    "@nuxt/fonts",
    "@nuxt/icon",
    "@unocss/nuxt",
    "@vueuse/nuxt",
  ],
});

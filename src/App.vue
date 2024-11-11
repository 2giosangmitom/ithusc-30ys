<script setup lang="ts">
import { ref } from "vue";
import LoadingScreen from "./components/LoadingScreen.vue";
import TheHeader from "./components/TheHeader.vue";
import TheBanner from "./components/TheBanner.vue";
import TheIntro from "./components/TheIntro.vue";
import TheFooter from "./components/TheFooter.vue";
import TheHistory from "./components/TheHistory.vue";
import TheDetails from "./components/TheDetails.vue";
import TheAchievements from "./components/TheAchievements.vue";
import SectionDivisor from "./components/SectionDivisor.vue";
import { useEventListener } from "@vueuse/core";

const loading = ref(true);
const hideLoadingScreen = () => {
  loading.value = false;
};

useEventListener(window, "load", hideLoadingScreen);
</script>

<template>
  <div>
    <LoadingScreen v-if="loading" />
    <div v-else>
      <TheHeader />
      <main>
        <TheBanner />
        <SectionDivisor />
        <TheIntro />
        <TheHistory />
        <TheAchievements />
        <TheDetails />
      </main>
      <TheFooter />
    </div>
  </div>
</template>

<style scoped>
main {
  margin: 0 2rem;
}
</style>

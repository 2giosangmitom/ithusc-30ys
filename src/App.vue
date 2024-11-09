<script setup lang="ts">
import TheHeader from "./components/TheHeader.vue";
import TheBanner from "./components/TheBanner.vue";
import TheIntro from "./components/TheIntro.vue";
import TheFooter from "./components/TheFooter.vue";
import TheHistory from "./components/TheHistory.vue";
import TheDetails from "./components/TheDetails.vue";
import TheAchievements from "./components/TheAchievements.vue";
</script>

<template>
  <TheHeader />
  <main>
    <TheBanner />
    <TheIntro />
    <TheHistory />
    <TheAchievements />
    <TheDetails />
  </main>
  <TheFooter />
</template>

<style scoped>
main {
  margin: 0 2rem;
}
</style>

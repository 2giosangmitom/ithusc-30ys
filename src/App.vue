<script setup lang="ts">
import TheHeader from "./components/TheHeader.vue";
import TheBanner from "./components/TheBanner.vue";
import TheIntro from "./components/TheIntro.vue";
import TheFooter from "./components/TheFooter.vue";
import TheHistory from "./components/TheHistory.vue";
import TheDetails from "./components/TheDetails.vue";
import SectionDivisor from "./components/SectionDivisor.vue";
import TheScrollTop from "./components/TheScrollTop.vue";
</script>

<template>
  <div>
    <TheHeader />
    <main>
      <TheBanner />
      <SectionDivisor />
      <TheIntro />
      <TheHistory />
      <TheDetails />
    </main>
    <TheFooter />
  </div>
  <TheScrollTop />
</template>

<style scoped>
main {
  margin: 0 2rem;
}
</style>

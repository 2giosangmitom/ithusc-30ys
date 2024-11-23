<script setup lang="ts">
const banners = [
  "/banner.jpg",
  "/banner2.jpg",
  "/girl_xinh.jpg",
  "/seminar_approach.jpg",
  "/thay_thanh_depzai.jpg",
  "/conhi.jpg",
];

const state = reactive({ current: 0 });

function nextBanner() {
  state.current = (state.current + 1) % banners.length;
}

function prevBanner() {
  state.current = (state.current - 1 + banners.length) % banners.length;
}

useIntervalFn(nextBanner, 5000);
</script>

<template>
  <section id="home" class="mb-2rem -mx-2rem z-0 sm:-mx-3rem md:-mx-4rem lg:-mx-7rem xl:-mx-10rem">
    <div v-for="(banner, index) in banners">
      <div :key="index" class="w-full h-full max-h-100vh overflow-hidden" :class="{ hidden: index !== state.current }">
        <NuxtImg
          preload
          :src="banner"
          alt="banner"
          class="w-full h-full object-center object-cover"
          width="2048"
          height="1000"
        />
      </div>
    </div>
    <div class="flex justify-between absolute top-1/2 transform -translate-y-1/2 w-full z-0">
      <button
        @click="prevBanner"
        class="text-3rem text-white p-0.2rem hover:-translate-x-10px transition flex items-center justify-center ml-1rem lg:ml-2rem z-0"
      >
        <Icon name="iconamoon:arrow-left-2" />
      </button>
      <button
        @click="nextBanner"
        class="text-3rem text-white p-0.2rem hover:translate-x-10px transition flex items-center justify-center mr-1rem lg:ml-2rem z-0"
      >
        <Icon name="iconamoon:arrow-right-2" />
      </button>
    </div>
  </section>
</template>

<style scoped>
section img {
  animation: fadeIn 1s ease;
}

@keyframes fadeIn {
  0% {
    opacity: 0.6;
  }
  100% {
    opacity: 1;
  }
}
</style>

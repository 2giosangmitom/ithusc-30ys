<script setup lang="ts">
const banners = [
  "/banner.jpg",
  "/banner2.jpg",
  "/girl_xinh.jpg",
  "/seminar_approach.jpg",
  "/thay_thanh_depzai.jpg",
];

const current = ref(0);

function nextBanner() {
  current.value = (current.value + 1) % banners.length;
}

function prevBanner() {
  current.value = (current.value - 1 + banners.length) % banners.length;
}

useIntervalFn(nextBanner, 5000);
</script>

<template>
  <section id="home" class="mb-2rem -mx-2rem overflow-hidden relative">
    <div v-for="(banner, index) in banners" class="flex">
      <div :key="index" v-show="index === current">
        <img :src="banner" alt="banner" class="w-full object-cover" />
      </div>
    </div>
    <div
      class="flex justify-between absolute top-1/2 transform -translate-y-1/2 w-full"
    >
      <button
        @click="prevBanner"
        class="text-3rem text-white p-0.2rem hover:-translate-x-10px transition flex items-center justify-center ml-1rem"
      >
        <Icon name="iconamoon:arrow-left-2" />
      </button>
      <button
        @click="nextBanner"
        class="text-3rem text-white p-0.2rem hover:translate-x-10px transition flex items-center justify-center mr-1rem"
      >
        <Icon name="iconamoon:arrow-right-2" />
      </button>
    </div>
  </section>
</template>

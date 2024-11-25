<script setup lang="ts">
const banners = [
  "/banner.jpg",
  "/banner2.jpg",
  "/girl_xinh.jpg",
  "/seminar_approach.jpg",
  "/thay_thanh_depzai.jpg",
  "/conhi.jpg",
];

const current = ref(0);

function nextBanner() {
  current.value = (current.value + 1) % banners.length;
}

function prevBanner() {
  current.value = (current.value - 1 + banners.length) % banners.length;
}

const home = templateRef("home");

const { pause, resume } = useIntervalFn(nextBanner, 5000);
pause();

useIntersectionObserver(home, ([entry]) => {
  if (entry.isIntersecting) {
    resume();
  } else {
    pause();
  }
});
</script>

<template>
  <section id="home" class="mb-2rem -mx-2rem z-0 sm:-mx-3rem md:-mx-4rem lg:-mx-7rem xl:-mx-10rem" ref="home">
    <div class="relative m-auto">
      <div v-for="(banner, index) in banners" class="flex z-0">
        <div :key="index" v-show="index === current" class="w-full h-full max-h-100vh overflow-hidden">
          <NuxtImg :src="banner" alt="banner" class="w-full" preload />
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
    </div>
  </section>
</template>

<style scoped>
img {
  animation: fadeIn 0.5s;
}

@keyframes fadeIn {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
</style>

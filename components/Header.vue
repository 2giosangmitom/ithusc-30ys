<script setup lang="ts">
const isOpen = ref(false);

const parts = [
  { name: "Giới thiệu", href: "#intro" },
  { name: "Lịch sử", href: "#history" },
  { name: "Chi tiết về sự kiện", href: "#details" },
];
</script>

<template>
  <header class="bg-accent h-80px flex items-center justify-between px-1rem">
    <div>
      <NuxtImg
        src="/logo_with_white_text.png"
        alt="it husc logo"
        width="280px"
      />
    </div>

    <!-- Mobile navigation -->
    <nav>
      <button
        @click="isOpen = !isOpen"
        class="border flex items-center justify-center border-amber-6 border-2px p-10px outline-none border-radius-5px text-white text-1.25rem hover:bg-orange-6 transition-all-300 z-0"
      >
        <Icon name="mingcute:menu-fill" />
      </button>

      <div
        @click="isOpen = false"
        class="fixed top-0 left-0 w-full h-full bg-black/50 z-0 backdrop-blur-sm transition-opacity duration-300"
        :class="{ 'opacity-0': !isOpen }"
        :style="{ visibility: isOpen ? 'visible' : 'hidden' }"
      ></div>

      <ul
        class="fixed top-0 right-0 h-100vh w-80% bg-#091057 shadow-2xl flex flex-col items-center text-center p-20px text-1.25rem text-white font-600 gap-20px z-5 transition-all-300 transform-translate-x-0"
        :class="{ 'transform-translate-x-100%': !isOpen }"
      >
        <button
          @click="isOpen = !isOpen"
          class="border flex items-center justify-center border-amber-6 border-2px p-10px outline-none border-radius-5px text-white text-1.25rem hover:bg-orange-6 transition-all-300 absolute left-20px top-20px"
        >
          <Icon name="mingcute:close-fill" />
        </button>

        <li class="mt-4rem">
          <a href="#home" @click="isOpen = !isOpen">
            <NuxtImg src="/logo.png" alt="logo" width="50px" height="50px" />
          </a>
        </li>

        <li
          v-for="part in parts"
          :key="part.name"
          @click="isOpen = !isOpen"
          class="transition-all-300 hover:text-orange-5"
        >
          <a :href="part.href">{{ part.name }}</a>
        </li>
      </ul>
    </nav>

    <!-- Desktop navigation -->
    <nav class="hidden"></nav>
  </header>
</template>

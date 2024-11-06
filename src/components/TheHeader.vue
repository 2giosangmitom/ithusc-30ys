<script setup lang="ts">
import { ref, computed } from "vue";
import { Icon } from "@iconify/vue";

// Navigation parts
const parts = [
  { name: "Giới thiệu", href: "#intro" },
  { name: "Lịch sử", href: "#history" },
  { name: "Thành tựu", href: "#achievements" },
  { name: "Chi tiết về sự kiện", href: "#details" },
];

const isOpen = ref(false); // Mobile sidebar state
const triggerIcon = computed(() =>
  isOpen.value ? "mingcute:close-fill" : "mingcute:menu-fill"
);
</script>

<template>
  <header class="header">
    <a href="/" class="header__logo">
      <img src="/images/logo_with_white_text.png" alt="logo with text" />
    </a>

    <nav class="mobile_nav">
      <button class="mobile_nav__trigger" @click="isOpen = !isOpen">
        <Icon :icon="triggerIcon" />
      </button>

      <ul class="mobile_nav__list" :class="{ opened: isOpen }">
        <li>
          <img src="/images/logo.png" alt="logo" />
        </li>
        <li v-for="part in parts" :key="part.name" @click="isOpen = !isOpen">
          <a :href="part.href">{{ part.name }}</a>
        </li>
      </ul>
    </nav>

    <nav class="desktop_nav"></nav>
  </header>
</template>

<style scoped>
/* Header */
.header {
  background-color: var(--accent-color);
  display: flex;
  align-items: center;
  height: 80px;
  justify-content: space-between;
  padding: 0 20px;
}

.header__logo {
  display: flex;
  align-items: center;
}

.header__logo img {
  width: 280px;
}

/* Navigation */
.desktop_nav {
  display: none;
}

.mobile_nav__trigger {
  background-color: transparent;
  color: var(--text);
  font-size: 2rem;
  display: flex;
  align-items: center;
  justify-content: center;
  outline: none;
  position: relative;
  z-index: 10;
  border: 2px solid var(--orange);
  padding: 3px;
  border-radius: 5px;
  cursor: pointer;
  transition: all 0.3s;
}

.mobile_nav__trigger:hover {
  background-color: var(--orange);
  color: var(--accent-color);
}

.mobile_nav__list {
  list-style: none;
  position: fixed;
  top: 0;
  right: 0;
  height: 100vh;
  width: 80%;
  background-color: #091057;
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  padding: 20px;
  gap: 20px;
  font-family: "Noto Sans";
  font-size: 1.25rem;
  font-weight: 700;
  transform: translateX(100%);
  transition: transform 0.2s ease;
  z-index: 5;
}

.mobile_nav__list.opened {
  transform: translateX(0);
}

.mobile_nav__list li a {
  color: var(--text);
  text-decoration: none;
  transition: all 0.3s;
}

.mobile_nav__list li:not(:first-child) a:hover {
  color: var(--orange);
}

.mobile_nav__list li:first-child {
  margin-bottom: 30px;
}

.mobile_nav__list li:first-child img {
  width: 50px;
  height: 50px;
}
</style>

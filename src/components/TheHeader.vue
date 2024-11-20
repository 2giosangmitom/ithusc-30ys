<script setup lang="ts">
import { ref } from "vue";
import { Icon } from "@iconify/vue";

// Navigation parts
const parts = [
  { name: "Giới thiệu", href: "#intro" },
  { name: "Lịch sử", href: "#history" },
  { name: "Chi tiết về sự kiện", href: "#details" },
];

const isOpen = ref(false); // Mobile sidebar state
</script>

<template>
  <header class="header">
    <span class="header__logo">
      <img src="/images/logo_with_white_text.png" alt="logo with text" />
    </span>

    <nav class="mobile_nav">
      <button class="mobile_nav__trigger" @click="isOpen = !isOpen">
        <Icon icon="mingcute:menu-fill" />
      </button>

      <div
        class="overlay"
        :class="{ opened: isOpen }"
        @click="isOpen = false"
      ></div>

      <ul class="mobile_nav__list" :class="{ opened: isOpen }">
        <button class="mobile_nav__list__close_btn" @click="isOpen = !isOpen">
          <Icon icon="mingcute:close-fill" />
        </button>
        <li>
          <a href="#home" @click="isOpen = !isOpen">
            <img src="/images/logo.png" alt="logo" />
          </a>
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
  z-index: 0;
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

.overlay {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.5);
  backdrop-filter: blur(5px);
  opacity: 0;
  visibility: hidden;
  transition: opacity 0.3s ease, visibility 0.3s ease;
  z-index: 4;
}

.overlay.opened {
  opacity: 1;
  visibility: visible;
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
  font-size: 1.25rem;
  font-weight: 700;
  transform: translateX(100%);
  transition: transform 0.2s ease;
  z-index: 5;
}

.mobile_nav__list__close_btn {
  background-color: transparent;
  color: var(--text);
  font-size: 2rem;
  display: flex;
  align-items: center;
  justify-content: center;
  outline: none;
  position: absolute;
  z-index: 0;
  border: 2px solid var(--orange);
  padding: 3px;
  border-radius: 5px;
  cursor: pointer;
  transition: all 0.3s;
  left: 0;
  margin-left: 30px;
}

.mobile_nav__list__close_btn:hover {
  background-color: var(--orange);
  color: var(--accent-color);
}

.mobile_nav__list.opened {
  transform: translateX(0);
}

.mobile_nav__list li a {
  color: var(--text);
  text-decoration: none;
  transition: all 0.3s;
}

.mobile_nav__list li:not(:first-child):hover a {
  color: var(--orange);
}

.mobile_nav__list li:nth-child(2) {
  margin-bottom: 30px;
  margin-top: 20px;
}

.mobile_nav__list img {
  width: 50px;
  height: 50px;
}
</style>

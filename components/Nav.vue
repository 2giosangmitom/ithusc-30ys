<script setup lang="ts">
const parts = [
  { name: "Giới thiệu", href: "#intro" },
  { name: "Lịch sử", href: "#history" },
  { name: "Chi tiết về sự kiện", href: "#details" },
  { name: "Thành tựu", href: "#achievements" },
];

const isOpen = ref(false);

const triggerIcon = computed(() =>
  isOpen.value ? "line-md:close-small" : "line-md:menu"
);
</script>

<template>
  <nav class="nav mobile-nav">
    <button
      @click.prevent="isOpen = !isOpen"
      class="nav__trigger"
      aria-label="Toggle navigation"
    >
      <iconify-icon :icon="triggerIcon"></iconify-icon>
    </button>

    <div v-show="isOpen" class="mobile-nav__content">
      <div class="mobile-nav__logo">
        <img src="/images/logo.png" alt="Logo without text" width="50" />
      </div>
      <ul class="mobile-nav__list">
        <li
          v-for="part in parts"
          :key="part.href"
          @click="isOpen = !isOpen"
          class="mobile-nav__item"
        >
          <a :href="part.href" class="mobile-nav__link">{{ part.name }}</a>
        </li>
      </ul>
    </div>
  </nav>

  <nav class="nav desktop-nav"></nav>
</template>

<style>
/* Layout structure */
.nav {
  position: relative;
}

.mobile-nav {
  z-index: 100;
}

/* Trigger button styles */
.nav__trigger {
  position: relative;
  z-index: 1000;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: transparent;
  border: 1px solid var(--red);
  cursor: pointer;
  font-size: 2rem;
  padding: 3px;
  border-radius: 5px;
  color: var(--text);
  transition: background-color 300ms;
  outline: none;
}

.nav__trigger:hover {
  background-color: var(--red);
}

/* Mobile navigation content */
.mobile-nav__content {
  background-color: var(--accent-color);
  position: fixed;
  top: 0;
  right: 0;
  width: 70%;
  height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  z-index: 10;
  padding-top: 20px;
}

.mobile-nav__logo {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-bottom: 20px;
}

/* Navigation list styles */
.mobile-nav__list {
  display: flex;
  flex-direction: column;
  gap: 20px;
  margin-top: 80px;
  text-align: center;
}

.mobile-nav__item {
  list-style: none;
}

.mobile-nav__link {
  text-decoration: none;
  color: #fcfcfd;
  font-size: 1.25rem;
  font-weight: 600;
  transition: color 300ms;
}

.mobile-nav__link:hover {
  color: var(--orange);
}

/* Hide desktop nav */
.desktop-nav {
  display: none;
}
</style>

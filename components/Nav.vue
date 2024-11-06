<script setup lang="ts">
const parts = [
  {
    name: "Giới thiệu",
    href: "#intro",
  },
  {
    name: "Lịch sử",
    href: "#history",
  },
  {
    name: "Chi tiết",
    href: "#details",
  },
  {
    name: "Thành tựu",
    href: "#achievements",
  },
];
</script>

<template>
  <nav>
    <ul>
      <li v-for="part in parts">
        <a :href="part.href">{{ part.name }}</a>
      </li>
    </ul>
  </nav>
</template>

<style>
nav {
  display: none;
}

li {
  list-style: none;
}

ul {
  display: flex;
  gap: 20px;
}

a {
  text-decoration: none;
  color: #fcfcfd;
  font-size: 1.25rem;
  font-weight: 600;
  transition-duration: 300ms;
}

li a:hover {
  color: #ff7b52;
}
</style>

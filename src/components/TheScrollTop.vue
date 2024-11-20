<script setup lang="ts">
import { Icon } from "@iconify/vue";
import { useEventListener, useDebounceFn } from "@vueuse/core";
import { ref } from "vue";

function handleClick() {
  window.scrollTo({
    top: 0,
    behavior: "smooth",
  });
}

const visible = ref(false);

useEventListener(
  "scroll",
  useDebounceFn(() => {
    visible.value = window.scrollY >= 500;
  }, 0),
);
</script>

<template>
  <button v-if="visible" @click="handleClick" class="scroll-to-top">
    <Icon icon="line-md:arrow-up" />
  </button>
</template>

<style scoped>
.scroll-to-top {
  border-radius: 100%;
  outline: none;
  background-color: #ebeaff;
  color: var(--text-black);
  border: none;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
  position: fixed;
  bottom: 20px;
  right: 20px;
  font-size: 15px;
  width: 50px;
  height: 50px;
  animation: floatIn 0.5s;
}

.scroll-to-top:active {
  scale: 0.9;
  transition: all 0.3s;
}

@keyframes floatIn {
  0% {
    transform: translateY(50px);
    opacity: 0;
  }
  100% {
    transform: translateY(0);
    opacity: 1;
  }
}
</style>

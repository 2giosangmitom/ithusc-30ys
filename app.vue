<script setup lang="ts">
useSeoMeta({
  title: "Chào mừng 30 năm thành lập khoa Công nghệ thông tin - Đại học Khoa Học Huế",
  description: "Chào mừng 30 năm thành lập khoa Công nghệ thông tin - Đại học Khoa Học Huế",
});
</script>

<template>
  <Header />
  <main class="mx-2rem sm:mx-3rem md:mx-4rem lg:mx-7rem xl:mx-10rem">
    <Banner />
    <SectionDivisor />
    <div class="lg:grid lg:grid-cols-2 lg:gap-4rem">
      <Intro />
      <History />
    </div>
    <Details />
  </main>
  <Footer />
  <ScrollTop />
</template>

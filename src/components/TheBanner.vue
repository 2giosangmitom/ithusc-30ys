<template>
  <section id="home">
    <h1>30th Anniversary</h1>
    <div class="home__vertical_line"></div>
    <h2>Kỉ niệm 30 năm thành lập khoa Công nghệ thông tin</h2>
    <div class="home__horizontal_line"></div>
    <img src="/images/30th_anniversary_banner.jpg" alt="banner" />
  </section>
</template>

<style scoped>
#home {
  text-align: center;
  margin-top: 2rem;
}

#home h1 {
  font-family: "Playfair Display", sans-serif;
  font-size: 2.5rem;
  font-weight: 500;
}

#home h2 {
  font-weight: 500;
  font-family: "Playfair Display", sans-serif;
}

#home img {
  width: 100%;
}

.home__vertical_line {
  height: 100px;
  width: 1px;
  margin: 10px auto;
  background-color: grey;
  opacity: 0.5;
}

.home__horizontal_line {
  width: 50%;
  height: 2px;
  background-color: grey;
  margin: 2rem auto;
}
</style>

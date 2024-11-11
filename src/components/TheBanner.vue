<template>
  <section id="home">
    <h1
      v-motion
      :initial="{
        y: 100,
        opacity: 0,
      }"
      :enter="{
        y: 0,
        opacity: 1,
        transition: {
          type: 'spring',
          stiffness: 250,
          damping: 25,
          mass: 0.5,
        },
      }"
      :delay="200"
      :duration="1000"
    >
      30th Anniversary
    </h1>
    <div
      v-motion
      :initial="{
        y: 100,
        opacity: 0,
      }"
      :enter="{
        y: 0,
        opacity: 1,
        transition: {
          type: 'spring',
          stiffness: 250,
          damping: 25,
          mass: 0.5,
        },
      }"
      :delay="300"
      :duration="1000"
      class="home__vertical_line"
    ></div>
    <h2
      v-motion
      :initial="{
        y: 100,
        opacity: 0,
      }"
      :enter="{
        y: 0,
        opacity: 1,
        transition: {
          type: 'spring',
          stiffness: 250,
          damping: 25,
          mass: 0.5,
        },
      }"
      :delay="400"
      :duration="1000"
    >
      Kỉ niệm 30 năm thành lập khoa Công nghệ thông tin
    </h2>
    <div
      v-motion
      :initial="{
        y: 100,
        opacity: 0,
      }"
      :enter="{
        y: 0,
        opacity: 1,
        transition: {
          type: 'spring',
          stiffness: 250,
          damping: 25,
          mass: 0.5,
        },
      }"
      :delay="500"
      :duration="1000"
      class="home__horizontal_line"
    ></div>
    <img
      v-motion
      :initial="{
        y: 100,
        opacity: 0,
      }"
      :enter="{
        y: 0,
        opacity: 1,
        transition: {
          type: 'spring',
          stiffness: 250,
          damping: 25,
          mass: 0.5,
        },
      }"
      :delay="600"
      :duration="1000"
      src="/images/30th_anniversary_banner.jpg"
      alt="banner"
    />
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

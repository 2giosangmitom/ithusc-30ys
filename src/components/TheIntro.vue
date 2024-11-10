<script setup lang="ts">
import { vIntersectionObserver } from "@vueuse/components";
import { ref } from "vue";

const targetVisible = ref(false);

function onIntersectionObserver([
  { isIntersecting },
]: IntersectionObserverEntry[]) {
  targetVisible.value = isIntersecting;
}
</script>

<template>
  <section id="intro" v-intersection-observer="onIntersectionObserver">
    <h3
      v-if="targetVisible"
      v-motion
      :initial="{
        x: 100,
        opacity: 0,
      }"
      :enter="{
        x: 0,
        opacity: 1,
        transition: {
          type: 'spring',
          stiffness: 250,
          damping: 25,
          mass: 0.5,
        },
      }"
      :delay="500"
      :duration="2000"
    >
      Thông tin tổng quan
    </h3>
    <p
      v-if="targetVisible"
      v-motion
      :initial="{
        x: 100,
        opacity: 0,
      }"
      :enter="{
        x: 0,
        opacity: 1,
        transition: {
          type: 'spring',
          stiffness: 250,
          damping: 25,
          mass: 0.5,
        },
      }"
      :delay="600"
      :duration="2000"
    >
      Ngày 13/12/1994 Bộ Giáo dục và Đào tạo ký quyết định thành lập khoa Công
      nghệ Thông tin (CNTT) thuộc trường Đại học Khoa học - Đại học Huế, một
      trong sáu khoa CNTT trọng điểm trên toàn quốc. Tuy nhiên, khoa CNTT chính
      thức hoạt động từ ngày 01/06/1995 với 6 thành viên chuyển từ Bộ môn Toán
      Ứng dụng của Khoa Toán - Cơ - Tin học.
    </p>
    <p
      v-if="targetVisible"
      v-motion
      :initial="{
        x: 100,
        opacity: 0,
      }"
      :enter="{
        x: 0,
        opacity: 1,
        transition: {
          type: 'spring',
          stiffness: 250,
          damping: 25,
          mass: 0.5,
        },
      }"
      :delay="700"
      :duration="2000"
    >
      Với sự phát triển không ngừng về đội ngũ, quy mô đào tạo và nghiên cứu
      khoa học (NCKH), hiện nay (năm 2023) Khoa có 26 viên chức và người lao
      động, trong đó 23 giảng viên với 06 phó giáo sư tiến sĩ, 9 tiến sĩ, 10
      thạc sĩ, 2 trợ giảng và 1 văn thư. Khoa hoạt động với ba bộ môn: Khoa học
      Máy tính, Công nghệ Phần mềm và Mạng máy tính. Hiện, khoa Công nghệ thông
      tin có 02 ngành đào tạo đại học (Công nghệ thông tin và Kỹ thuật phần
      mềm), 02 ngành đào tạo thạc sĩ (Khoa học máy tính và Quản lí công nghệ
      thông tin) và 01 ngành đào tạo tiến sĩ (Khoa học máy tính).
    </p>
    <p
      v-if="targetVisible"
      v-motion
      :initial="{
        x: 100,
        opacity: 0,
      }"
      :enter="{
        x: 0,
        opacity: 1,
        transition: {
          type: 'spring',
          stiffness: 250,
          damping: 25,
          mass: 0.5,
        },
      }"
      :delay="800"
      :duration="2000"
    >
      Với bề dày 30 năm xây dựng và phát triển, khoa đã đào tạo được số lượng
      lớn các cử nhân, thạc sĩ, tiến sĩ đang công tác trên mọi miền tổ quốc và
      thế giới, hướng tới đóng góp cho sự phát triển của đất nước và hội nhập
      quốc tế tích cực, sâu rộng.
    </p>
  </section>
</template>

<style scoped>
#intro {
  overflow: hidden;
}

#intro h3 {
  font-size: 2rem;
  font-weight: 600;
  margin-bottom: 1rem;
}

#intro p {
  font-size: 1.125rem;
  line-height: 1.5;
  margin-bottom: 1rem;
}
</style>

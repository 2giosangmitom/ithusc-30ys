<script setup lang="ts">
const history = [
  {
    date: "13/12/1994",
    content:
      "Bộ Giáo Dục và Đào Tạo ra quyết định thành lập Khoa Công nghệ thông tin tại Đại học Huế",
  },
  {
    date: "01/06/1995",
    content:
      "Chính thức đào tạo cử nhân ngành Công nghệ thông tin, trở thành 1 trong 6 khoa Công nghệ thông tin trọng điểm trên toàn quốc",
  },
  {
    date: "2000",
    content:
      "Đào tạo thạc sĩ chuyên ngành Khoa học máy tính được đưa vào hoạt động",
  },
  {
    date: "2010",
    content:
      "Khoa Công nghệ thông tin được giao trọng trách đào tạo tiến sĩ chuyên ngành Khoa học máy tính",
  },
  {
    date: "2018",
    content: "Mở ngành đào tạo cử nhân Kỹ thuật phần mềm (cơ chế đặc thù)",
  },
  {
    date: "2020",
    content: "Đào tạo Thạc sĩ ngành Quản lí công nghệ thông tin",
  },
];
</script>

<template>
  <section id="history" class="mt-1rem">
    <div>
      <h3>Lịch sử phát triển</h3>
    </div>
    <div class="flex flex-col">
      <div
        v-for="(item, index) in history"
        :key="item.date"
        class="flex my-12px"
      >
        <span
          class="font-bold relative pb-32px before:content-empty before:absolute before:h-13px before:w-13px before:border-radius-50% before:border before:border-black before:right-32px before:top-3px flex-[0_0_150px]"
          :class="{
            'after:content-empty after:absolute after:h-[calc(100%-10px)] after:w-1px after:bg-black after:top-24px after:right-38px':
              index != history.length - 1,
          }"
          >{{ item.date }}</span
        >
        <p>{{ item.content }}</p>
      </div>
    </div>
  </section>
</template>

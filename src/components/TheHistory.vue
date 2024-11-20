<script setup lang="ts">
const history = [
  {
    date: "13/12/1994",
    content: "Bộ Giáo Dục và Đào Tạo ra quyết định thành lập Khoa Công nghệ thông tin tại Đại học Huế",
  },
  {
    date: "01/06/1995",
    content:
      "Chính thức đào tạo cử nhân ngành Công nghệ thông tin, trở thành 1 trong 6 khoa Công nghệ thông tin trọng điểm trên toàn quốc",
  },
  {
    date: "2000",
    content: "Đào tạo thạc sĩ chuyên ngành Khoa học máy tính được đưa vào hoạt động",
  },
  {
    date: "2010",
    content: "Khoa Công nghệ thông tin được giao trọng trách đào tạo tiến sĩ chuyên ngành Khoa học máy tính",
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
  <section id="history">
    <div class="history__title">
      <h3>Lịch sử phát triển</h3>
    </div>
    <div class="history__content">
      <div class="history__content__item" v-for="item in history" :key="item.date">
        <span class="history__content__item__date">{{ item.date }}</span>
        <p class="history__content__item__content">{{ item.content }}</p>
      </div>
    </div>
  </section>
</template>

<style scoped>
.history__content {
  display: flex;
  flex-direction: column;
}

.history__content__item {
  margin: 12px 0;
  display: flex;
  flex-direction: row;
}

.history__content__item__date {
  font-weight: 500;
  position: relative;
  flex: 0 0 140px;
  padding-bottom: 32px;
}

.history__content__item__date::before {
  content: "";
  position: absolute;
  height: 13px;
  width: 13px;
  border-radius: 50%;
  border: 2px solid var(--accent-color);
  right: 32px;
  top: 4px;
}

.history__content__item:not(:last-child) .history__content__item__date::after {
  content: "";
  position: absolute;
  height: calc(100% - 12px);
  width: 1px;
  background: black;
  right: 38px;
  top: 24px;
}

.history__content__item__content {
  flex: 1;
}
</style>

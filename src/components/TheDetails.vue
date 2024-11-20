<script setup lang="ts">
import { Ref, ref, useTemplateRef } from "vue";
import { useEventListener } from "@vueuse/core";

type Detail = {
  title: string;
  location: string;
  date: string;
  time?: string;
};

const fullDetails: Detail[] = [
  {
    title: "Lễ mít tinh kỷ niệm 30 năm thành lập khoa",
    location: "Sảnh A, trường ĐH Khoa học, Đại học Huế",
    date: "1 Tháng 6, 2024",
    time: "7:30",
  },
  {
    title: "Lễ tọa đàm kỷ niệm 30 năm thành lập khoa",
    location: "Trường ĐH Khoa học, Đại học Huế",
    date: "1 Tháng 6, 2024",
    time: "8:30",
  },
  {
    title: "Giao lưu, dự tiệc kỷ niệm thân mật",
    location: "Trường ĐH Khoa học, Đại học Huế",
    date: "1 Tháng 6, 2024",
    time: "11:00",
  },
  {
    title: "Cuộc thi thiết kế chào mừng 30 năm thành lập",
    location: "Khoa công nghệ thông tin, tầng 2 nhà G, trường ĐH Khoa học",
    date: "Tháng 11, 2024",
  },
  {
    title: "Giải bóng đá sinh viên IT CUP 2025",
    location: "Sân cỏ nhân tạo trường ĐH Luật, Đại học Huế",
    date: "Tháng 3, 2025",
  },
  {
    title: "Cuộc thi lập trình OLP/ICPC khoa Công nghệ thông tin",
    location: "Trường ĐH Khoa học, Đại học Huế",
    date: "Tháng 4, 2025",
  },
  {
    title: "Tổ chức hội thảo liên kết đào tạo và lễ ký kết",
    location: "Hội trường A1, Trường ĐH Khoa học, ĐH Huế",
    date: "31 tháng 5, 2025",
    time: "7:30",
  },
  {
    title: "Tổ chức hội thảo khoa học",
    location: "Hội trường A1, Trường ĐH Khoa học, ĐH Huế",
    date: "31 tháng 5, 2025",
    time: "14:00",
  },
  {
    title: "Đêm hội IT STAR và đêm hội âm nhạc",
    location: "Sảnh A, trường ĐH Khoa học, Đại học Huế",
    date: "31 tháng 5, 2025",
    time: "18:00",
  },
];

const details: Ref<Detail[]> = ref(fullDetails);

const searchBox = useTemplateRef("searchBox");

useEventListener(searchBox, "keydown", (e) => {
  if (e.key === "Enter") {
    if (searchBox.value?.value === "") {
      details.value = fullDetails;
    } else {
      details.value = details.value.filter((item) => {
        return item.title.toLowerCase().includes(searchBox.value?.value.toLowerCase() || "");
      });
    }
  }
});
</script>

<template>
  <section id="details">
    <div class="details__title">
      <div class="details__title-description">
        <p>Lịch trình của sự kiện</p>
        <div class="details__title_horizontal-line"></div>
      </div>
      <h3>Chi tiết về lễ kỷ niệm</h3>
    </div>

    <div class="details__calendar">
      <div class="details__calendar__search_box">
        <label for="search_box" class="details__search-label">Tìm kiếm từ khóa</label>
        <input id="search_box" type="text" class="details__search" placeholder="Tìm kiếm" ref="searchBox" />
      </div>

      <div class="details__calendar__list_items">
        <div v-for="detail in details" :key="detail.title" class="details__calendar__item">
          <div class="details__calendar__item__title">
            <h4>{{ detail.title }}</h4>
          </div>
          <div class="details__calendar__item__description">
            <div>
              <p>Ngày</p>
              <p>{{ detail.date }}</p>
            </div>
            <div v-if="detail.time">
              <p>Thời gian</p>
              <p>{{ detail.time }}</p>
            </div>
            <div>
              <p>Địa điểm</p>
              <p>{{ detail.location }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.details__title {
  background-color: var(--accent-color);
  color: var(--text);
  padding: 20px;
  margin: 0 -2rem;
}

.details__title h3 {
  font-size: 2rem;
  font-family: "Playfair Display", serif;
}

.details__title_horizontal-line {
  width: 100%;
  height: 1px;
  background-color: var(--text);
  margin: 1rem 0;
}

.details__title-description {
  display: flex;
  align-items: center;
  margin-bottom: 5px;
}

.details__title p {
  font-size: 1rem;
  font-weight: 400;
  margin-right: 1rem;
  width: max-content;
  text-wrap: nowrap;
}

.details__calendar__search_box {
  margin: 2rem 0;
  display: flex;
  flex-direction: column;
}

.details__calendar__search_box label {
  font-size: 0.9rem;
  text-transform: uppercase;
  margin-bottom: 5px;
}

.details__calendar__search_box input {
  padding: 10px;
  border-radius: 20px;
  outline: none;
  border: 2px solid var(--accent-color);
  transition: all 0.3s;
  font-size: 1rem;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.details__calendar__search_box input::placeholder {
  color: var(--accent-color);
  font-size: 1rem;
  font-weight: 600;
}

.details__calendar__search_box input:focus {
  outline: 1px solid var(--accent-color);
}

.details__calendar__item__description div {
  display: flex;
  padding: 10px 0;
}

.details__calendar__item__description div:not(:last-child) {
  border-bottom: 1px solid #b7b7b7;
}

.details__calendar__item__description div p:first-child {
  min-width: 150px;
  font-weight: bold;
}

.details__calendar__item__title {
  font-size: 1.25rem;
  color: var(--accent-color);
}

.details__calendar__item {
  padding: 20px 0;
}

.details__calendar__item:not(:last-child) {
  border-bottom: 2px solid var(--accent-color);
}

.details__calendar__item:first-child {
  border-top: 2px solid var(--accent-color);
}
</style>

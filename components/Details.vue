<script setup lang="ts">
const fullDetails = [
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

const details = ref(fullDetails);

const searchBox = useTemplateRef("searchBox");

useEventListener(searchBox, "keydown", (e) => {
  if (e.key === "Enter") {
    if (searchBox.value?.value === "") {
      details.value = fullDetails;
    } else {
      details.value = fullDetails.filter((item) => {
        return item.title.toLowerCase().includes(searchBox.value?.value.toLowerCase() || "");
      });
    }
  }
});
</script>

<template>
  <section id="details" class="mt-1rem">
    <div
      class="bg-accent text-white p-2rem -mx-2rem sm:-mx-3rem sm:px-3rem md:-mx-4rem md:px-4rem lg:-mx-7rem lg:px-7rem xl:-mx-10rem xl:px-10rem"
    >
      <div class="flex items-center mb-5px">
        <p class="text-nowrap">Các hoạt động kỉ niệm</p>
        <div class="w-full h-1px bg-white ml-20px"></div>
      </div>
      <h2 class="font-[Playfair_Display]">Chi tiết về lễ kỷ niệm</h2>
    </div>

    <div>
      <div class="my-2rem flex flex-col lg:w-800px lg:mx-auto">
        <div class="flex justify-between items-center mb-10px text-0.9rem uppercase mb-5px">
          <label for="search_box">Tìm kiếm từ khóa</label>
          <label for="search_box"> Đang hiển thị {{ details.length }} / {{ fullDetails.length }} hoạt động </label>
        </div>

        <input
          id="search_box"
          type="text"
          placeholder="Tìm kiếm"
          ref="searchBox"
          class="p-10px border-radius-25px border-2px border-#26335d transition-all-300 text-1rem shadow-sm shadow-black/50 outline-none placeholder-black focus:outline-1px focus:outline-#26335d"
        />
      </div>

      <div>
        <div
          v-for="(detail, index) in details"
          :key="detail.title"
          class="py-20px lg:flex lg:justify-between"
          :class="{
            'border-b-2px border-#26335d': index != details.length - 1,
          }"
        >
          <div class="lg:border-r lg:border-#b7b7b7 lg:w-60% lg:mr-20px lg:pr-20px">
            <strong class="text-#26335d text-1.25rem lg:text-2rem">
              {{ detail.title }}
            </strong>
          </div>
          <div class="lg:w-40%">
            <div class="flex py-10px border-b border-#b7b7b7">
              <p class="min-w-150px font-bold">Ngày</p>
              <p>{{ detail.date }}</p>
            </div>
            <div v-if="detail.time" class="flex py-10px border-b border-#b7b7b7">
              <p class="min-w-150px font-bold">Thời gian</p>
              <p>{{ detail.time }}</p>
            </div>
            <div class="flex py-10px">
              <p class="min-w-150px font-bold">Địa điểm</p>
              <p>{{ detail.location }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

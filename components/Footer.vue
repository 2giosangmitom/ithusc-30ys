<template>
  <footer
    class="bg-[url(/cntt.jpg)] bg-cover p-2rem mt-2rem relative flex flex-col before:content-empty before:absolute before:top-0 before:left-0 before:w-full before:h-full before:bg-black/80 z-0 sm:p-3rem md:p-4rem lg:p-7rem xl:px-10rem"
  >
    <div class="relative text-white mb-2rem">
      <NuxtImg
        src="/logo_with_white_text.png"
        alt="Trường Đại học Khoa học logo"
        width="320px"
      />
    </div>
    <div class="relative text-white mb-2rem">
      <h4 class="uppercase">Liên hệ với chúng tôi</h4>
      <div>
        <p>
          <span class="inline-block min-w110px">Địa chỉ:</span> 77 Nguyễn Huệ,
          Thành Phố Huế
        </p>
        <p>
          <span class="inline-block min-w110px">Số điện thoại:</span>
          <a href="tel:(84) (234) 3826767" class="underline"
            >(84) (234) 3826767</a
          >
        </p>
        <p>
          <span class="inline-block min-w110px">Email:</span>
          <a href="mailto:khcndhkh@hueuni.edu.vn" class="underline"
            >khcndhkh@hueuni.edu.vn</a
          >
        </p>
      </div>
    </div>
    <div class="relative text-white flex flex-col">
      <h4 class="uppercase">Kết nối với chúng tôi</h4>
      <a
        href="https://husc.edu.vn/"
        target="_blank"
        rel="noopener noreferrer"
        class="underline"
        >Trường Đại học Khoa học</a
      >
      <a
        href="https://it.husc.edu.vn/"
        target="_blank"
        rel="noopener noreferrer"
        class="underline"
        >Khoa Công nghệ thông tin</a
      >
    </div>
  </footer>
</template>

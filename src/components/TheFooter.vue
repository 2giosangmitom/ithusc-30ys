<template>
  <footer>
    <div class="footer__logo">
      <img src="/images/logo_with_white_text.png" alt="Trường Đại học Khoa học logo" width="320px" />
    </div>
    <div class="contact">
      <h4>Liên hệ với chúng tôi</h4>
      <div>
        <p><span>Địa chỉ:</span> 77 Nguyễn Huệ, Thành Phố Huế</p>
        <p><span>Số điện thoại:</span> <a href="tel:(0234) 3823290">(0234) 3823290</a></p>
        <p><span>Email:</span> <a href="mailto:khcndhkh@hueuni.edu.vn">khcndhkh@hueuni.edu.vn</a></p>
      </div>
    </div>
    <div class="connect">
      <h4>Kết nối với chúng tôi</h4>
      <a href="https://husc.edu.vn/" target="_blank" rel="noopener noreferrer">Trường Đại học Khoa học</a>
      <a href="https://it.husc.edu.vn/" target="_blank" rel="noopener noreferrer">Khoa Công nghệ thông tin</a>
    </div>
  </footer>
</template>

<style scoped>
footer {
  background-image: url(/images/cntt.jpg);
  background-size: cover;
  background-repeat: no-repeat;
  margin-top: 2rem;
  position: relative;
  display: flex;
  flex-direction: column;
  padding: 2rem;
}

footer::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.8);
  z-index: 0;
}

footer > div {
  position: relative;
  color: var(--text);
}

footer > div:not(:last-child) {
  margin-bottom: 2rem;
}

footer a {
  color: var(--text);
  text-decoration: underline;
}

.contact div p {
  margin: 0.5rem 0;
}

.contact div p span {
  color: var(--orange);
  min-width: 120px;
  display: inline-block;
  font-weight: bold;
}

.contact h4,
.connect h4 {
  text-transform: uppercase;
}

.connect {
  display: flex;
  flex-direction: column;
}
</style>

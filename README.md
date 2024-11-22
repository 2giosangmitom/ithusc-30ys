# 30th Anniversary Landing Page of IT Department at Hue University of Science

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/2giosangmitom/ithusc-30ys?quickstart=1)

## About the Project

This is a **front-end project** built for the 30th anniversary of the IT Department at Hue University of Science (HUSC). The project is developed using the following modern web technologies:

- **Framework**: [Nuxt](https://nuxt.com) (based on Vue.js)
- **Styling**: [UnoCSS](https://unocss.dev)
- **Utilities**: [VueUse](https://vueuse.org) and other supportive libraries
- **Package Management**: [pnpm](https://pnpm.io)

## Features

- Responsive design with UnoCSS
- Optimized performance with Nuxt
- Enhanced developer experience using VueUse and modular components

---

## Requirements

- **Container Tools**:  
  - [Docker](https://www.docker.com)  
  - [Podman](https://podman.io) (alternative to Docker)  
  or
- **Node.js** (v20 or later recommended)  
- **pnpm** (v9)

---

## Getting Started

### Using Docker

1. **Build the Docker image**:
   ```bash
   docker build -t ithusc-30ys .
   ```

2. **Run the container**:
   ```bash
   docker run -d -p 3000:3000 --replace --name ithusc-container ithusc-30ys
   ```

3. **Stop the container** (if needed):
   ```bash
   docker stop ithusc-container
   ```

4. **Access the application**:  
   Open [http://localhost:3000](http://localhost:3000) in your browser.

---

### Using Podman

1. **Build the Podman image**:
   ```bash
   podman build -t ithusc-30ys .
   ```

2. **Run the container**:
   ```bash
   podman run -d -p 3000:3000 --replace --name ithusc-container localhost/ithusc-30ys
   ```

3. **Stop the container** (if needed):
   ```bash
   podman stop ithusc-container
   ```

4. **Access the application**:  
   Open [http://localhost:3000](http://localhost:3000) in your browser.

---

### Using Node.js and pnpm

1. **Install dependencies**:
   ```bash
   pnpm install
   ```

2. **Start the development server**:
   ```bash
   pnpm dev
   ```

3. **Build for production**:
   ```bash
   pnpm build
   ```

4. **Preview the production build**:
   ```bash
   pnpm preview
   ```

---

## License

This project is licensed under the [MIT License](./LICENSE).

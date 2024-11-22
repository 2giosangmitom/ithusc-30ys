build:
  podman build -t ithusc-30ys .

run:
  podman run -d -p 3000:3000 --replace --name ithusc-container localhost/ithusc-30ys

stop:
  podman stop ithusc-container

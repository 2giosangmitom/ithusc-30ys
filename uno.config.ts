import { defineConfig } from "unocss";
import { presetUno } from "unocss";

export default defineConfig({
  presets: [presetUno()],
  rules: [
    [
      /^border-radius-([\.\d]+)(px|em|rem|%)?$/,
      ([_, num, unit = "px"]) => ({ "border-radius": `${num}${unit}` }),
    ],
    ["bg-accent", { "background-color": "#26335d" }],
  ],
});

import { defineConfig } from "astro/config";
import mdx from "@astrojs/mdx";
import sitemap from "@astrojs/sitemap";
import tailwind from "@astrojs/tailwind";
import icon from "astro-icon";

export default defineConfig({
  site: "https://mywebsite", // Required for sitemap -> Replace with your site's URL
  integrations: [mdx(), sitemap(), tailwind(), icon()],
});

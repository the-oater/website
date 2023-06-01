/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ["./src/**/*/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"],
    theme: {
        extend: {
            colors: {
                oat: "#EAD18C",
                "oat-light": "#EFDCA9",
                sonic: "#707070",
                raisin: "#30313D",
                "oat-lighter": "#F2E3BA",
                "oat-superlight": "#FBF4E1",
                "oat-dark": "#A07500",
            },
            fontFamily: {
                sans: ['"Open Sans"', "sans-serif"],
                zen: ['"Zen Maru Gothic"', "sans-serif"],
            },
        },
    },
    plugins: [require("@tailwindcss/typography")],
};

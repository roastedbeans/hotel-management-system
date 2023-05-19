const defaultTheme = require('tailwindcss/defaultTheme');

/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './vendor/laravel/jetstream/**/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
    ],
    theme: {
        extend: {
            fontFamily: {
                sans: ["sen", ...defaultTheme.fontFamily.sans],
                sansBold: ["sen-bold", ...defaultTheme.fontFamily.sans],
                serif: ["catchy-mager", ...defaultTheme.fontFamily.serif],
            },

            colors: {
                primary: "#623E2A",
                secondary: "#91713C",
                tertiary: "#EFEBE5",
                quaternary: "#F4F1ED",
            },
        },
    },
};

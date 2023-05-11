## 🚀 Documentation The Oater Website

This Documentation is is meant for:  
Editors: that want to change or add images and text  
Developers: that want to create new sections or edit existing ones

It is divided into three sections:

1. General
2. Quick Guide for editors
3. Documentation for developers

## 1. General

### Tech Stack Overview

#### Astro

Astro is an all-in-one web framework for building fast, content-focused websites. In our case it is used to generate a (mostly) static website. Unlike traditional web development tools, Astro does not send any JavaScript to the browser by default. This results in faster load times and a better browsing experience for your users. However, Astro still allows you to use JavaScript when necessary, so you have the flexibility to create more interactive features when you need them.

Think of Astro as a tool that allows you to assemble a website using the parts you like from other web technologies, but with a focus on delivering a leaner and faster experience for your users.

#### TailwindCSS

TailwindCSS is a utility-first CSS framework. In non-tech language, it's a tool that makes it easier to style your website. TailwindCSS is different from other CSS tools you might have heard of because instead of predesigned components, it provides low-level utility classes that let you build entirely custom designs.

```
/
├── public/
│   └── favicon.svg
├── src/
│   ├── components/
│   │   └── Card.astro
│   ├── layouts/
│   │   └── Layout.astro
│   └── pages/
│       └── index.astro
└── package.json
```

Astro looks for `.astro` or `.md` files in the `src/pages/` directory. Each page is exposed as a route based on its file name.

There's nothing special about `src/components/`, but that's where we like to put any Astro/React/Vue/Svelte/Preact components.

Any static assets, like images, can be placed in the `public/` directory.

## 🧞 Commands

All commands are run from the root of the project, from a terminal:

| Command                | Action                                             |
| :--------------------- | :------------------------------------------------- |
| `npm install`          | Installs dependencies                              |
| `npm run dev`          | Starts local dev server at `localhost:3000`        |
| `npm run build`        | Build your production site to `./dist/`            |
| `npm run preview`      | Preview your build locally, before deploying       |
| `npm run astro ...`    | Run CLI commands like `astro add`, `astro preview` |
| `npm run astro --help` | Get help using the Astro CLI                       |

## 👀 Want to learn more?

Feel free to check [our documentation](https://docs.astro.build) or jump into our [Discord server](https://astro.build/chat).

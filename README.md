## Documentation The Oater Website

The Oater website uses Tailwindcss for styling and Astro as a static site generator. For versioning Github is used. The site is build locally and hosted on uberspace.de. Please check the corresponding documentations for further information on how each technology works in detail.

### Astro

Astro is an all-in-one web framework for building fast, content-focused websites. In our case it is used to generate a (mostly) static website. Unlike traditional web development tools, Astro does not send any JavaScript to the browser by default. This results in faster load times and a better browsing experience for your users. However, Astro still allows you to use JavaScript when necessary, so you have the flexibility to create more interactive features when you need them.

https://astro.build/

https://docs.astro.build/

### TailwindCSS

Tailwind CSS is low-level CSS framework that provides utility-first classes, allowing you to build styled websites without leaving the HTML. Instead of predesigned components, it provides you with a set of utility classes. It encourages component-driven design and lets you control every detail, from colors, spacing, to responsive design. The framework is designed to be responsive, and its classes can be applied conditionally at different breakpoints. In our case it is directly integrated into our [astro installation](https://docs.astro.build/en/guides/integrations-guide/tailwind/).

https://tailwindcss.com/

[https://tailwindcss.com/docs/](https://tailwindcss.com/docs/i)

https://docs.astro.build/en/guides/integrations-guide/tailwind/

### **Github**

GitHub is a web-based hosting platform for version control and collaboration that allows developers to work on projects together, managing and storing revisions of projects and enabling multiple people to make changes to the same project concurrently.

https://github.com/

https://docs.github.com/en

### Uberspace

Uberspace is a versatile, user-friendly web hosting platform that provides users with the flexibility to host a variety of web projects, applications, and services on a shared Unix server environment.

https://uberspace.de/en/

https://manual.uberspace.de/

### **Project Setup**

**Pre-requisites**

1. To work on the project use an IDE, like VS Code. Make sure that you have [node.js](https://nodejs.org/en) installed.
2. It is also recommended to install the [Astro extension](https://marketplace.visualstudio.com/items?itemName=astro-build.astro-vscode), [TailwindCSS Intellisense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss), [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) and the [Tailwind plugin](https://github.com/tailwindlabs/prettier-plugin-tailwindcss).
3. We use git for versioning, install [Git in VS Code](https://code.visualstudio.com/docs/sourcecontrol/intro-to-git) or use the [Github Desktop app](https://desktop.github.com/).
4. Use the company github account or get added as an collaborator on your own account.
5. You need access to the uberspace account and an ftp program.
6. Login to the [uberspace](https://dashboard.uberspace.de/login?lang=en) and set a new ssh password to connect to the server via sftp (under "Logins"). The username is oater and the server hamal.uberspace.de (more information under "Datasheet" in the uberspace account)

**Setup&Work**

1. Clone the repository locally
2. run `npm run dev` in the terminal in the root of the project to get a local server while developing
3. run `npm run build` to build the site. The production site will be created in the `/dist` directory.
4. Copy all the files and fodlers in the `/dist` directory to the server to upload your changes
5. push your changes to the github account 

***Deployment***

1.	build the site using `npm run build`
2.	a new dirctory called `dist` will appear
3.	copy all containing files to the ~html directory of the uberspace account using you ftp programm


**File structure**

```
/
├── node_modules/
├── public/
│   └── favicon.svg
├── src/
│   ├── components/
│   │   └── Card.astro
│   ├── layouts/
│   │   ├── Layout.astro
│       └── Layout_de.astro
│   ├── pages/
│   │   ├── index.astro
│   │   └── de/
│	│		└─index.astro
│   └── styles/
│       ├── base.css
│       ├── opensans.css
│       └── ZenMaruGothic.css
├── package.json
├── base.css
└── tailwind.config.cjs

```

-   `node_modules/` contains all the dependencies and sub-dependencies of the project. These dependencies are libraries, frameworks, or other code modules that the project needs to function correctly and are listed in the `package.json` .You dont need to change anything in this directory.
-   Any static assets, like images, are placed in the `public/` directory.
-   The `src/components/` directory contains all reusable components, for example `navbar.astro` is the component of the navigation bar
-   Astro looks for `.astro`files in the `src/pages/` directory. Each `.astro` file in the `pages/` directory corresponds to a site on our website e.g. `machines.astro` contains the content for `www.oater.de/machines`
-   The `layout.astro` file in `layouts/`contains components and html-code that are displayed on each site. For example the footer and navbar.
-   The styles/ directory contains the `base.css` of tailwindcss and css files for the custom fonts we use. `base.css` is used for custom styles added to tailwind. In our case styles for the headlines.
-   for the german translation we have a subdirectory `/de` all files will be routed to www.oater.de/de/filename all the german pages must use the `Layout_de` to get the german navbar and footer.

### Commands

All commands are run from the root of the project, from a terminal:

| Command              | Action                                         |
| -------------------- | ---------------------------------------------- |
| npm run dev          | Starts local dev server at localhost:3000      |
| npm run build        | Build your production site to ./dist/          |
| npm run preview      | Preview your build locally, before deploying   |
| npm run astro ...    | Run CLI commands like astro add, astro preview |
| npm run astro --help | Get help using the Astro CLI                   |
| npm install          | Installs dependencies                          |

### **Components**

The website uses reusable components for almost every section of the website. These components are self-contained pieces of code that have no content (images, text etc.) in themselves. The content is filled in the page file, this way they can be reused in multiple places. Changes that are made to the component will appear on all instances where the component is imported, regardless of content.

The content is filled with properties that are defined in the component. For example below is a Hero component. It has no content in itself, instead the `heroHeading` and `heroImage` are setup as a variable in the component script. In the component template the variables are passed with curly braces `{heroImage}` and `{heroHeading}`.

```jsx
---
export interface Props {
	heroHeading: string;
	heroImage: string;
}

const { heroHeading, heroImage } = Astro.props;
---

<div class="relative">
	<div class="absolute inset-0 h-[60vh]">
		<img class="h-full w-full object-cover opacity-70" src={heroImage} alt="" />
	</div>
	<div class="relative mx-auto flex h-[60vh] min-h-fit max-w-7xl px-10">
		<div class="m-auto">
			<div class="hidden text-center lg:block">
				<h1 class="underline-6xl text-6xl font-bold leading-snug text-raisin">
					{heroHeading}
				</h1>
			</div>
			…
	…
```

In the page file the hero component is imported along others in the component script section. In the component template section the variables are filled with content. `heroHeading="Sustainability is numbers not words" heroImage="/header_sustainability.webp"`

Content can also be passed via [slots](https://docs.astro.build/en/core-concepts/astro-components/#slots). Slots are a placeholder for content that can simply be text or even html code. In the Imgtext (imagetext.astro) component a slot is used to inject longer text, that even includes some parts of the text that are highlighted via a div.

```jsx
---
import Layout from "../layouts/Layout.astro";
import ImgText from "../components/imagetext.astro";
import Hero from "../components/hero.astro";
---

<Layout title="THE OATER - Sustainability">
  <Hero heroHeading="Sustainability is numbers not words" heroImage="/header_sustainability.webp" />
  <ImgText reverse title="How are we sustainable?" imgUrl="/sustainability.png" id="how" background="bg-zinc-200">
	Our independent Lifecycle Assessment study has shown that The Oater oat drink emits 0.15kg CO2/L which is already <span
	  class="font-semibold">57% less CO2</span
	> equivalents compared to conventional packaged oat drink and 93% less emissions than cow milk. Here are some of the
	ways we do it:
  </ImgText>
 </Layout>
```

[Learn more about components](https://docs.astro.build/en/core-concepts/astro-components/)

**Usage**
To understand where each component is used and how it is passed data, please study the imports in the page file and the exports in the component file. Some components are multiuse and their appearance can be changed by parameter. For example `imagetext.astro` has the option to display a headline or to leave it out. Image and Text position can be switched by passing the `reverse` prop. There is also the option to give the section a background color or id.

### **Pages**

Each `.astro` file in the `pages/` directory corresponds to a subpage on the website. In the page file We have english and german as language options, the german localisation is done via another directory called `de/` which includes a duplication of all page files, but with german text content. The structure of each page shoukd be kept the same between language options. Keep in mind to change both page files when you change the structure.

### **Layouts**

Layouts are specifically used for components that are displayed on each page. These include the navbar, footer and also the html head. To change the content in these you have to change the layout file. There are two Layouts, one for english and one for german. The contents of the pages are inserted via a slot into the Layout.

# Hubspot

Hubspot is used for the Magazine/Blog. It is directly linked in the Navigation and not hosted by uberspace. Instead the subdomain magazine.oater.de/de (for the german magazine) is connected to hubspots servers. All changes regarding the blog have to go through hubspot.

-   If changes are made to the navbar or the footer on the main site, the code needs to be manually changed on Hubspot. This can be done under Settings>Tools>Website>Blog>Templates>Header HTML and Footer HTML
-   Save the code that is in there before you paste new code in! This way you can compare, if something with the new code does not work.
-   It is important that you manually change all the links to the full ones. `/solution` becomes [`https://oater.de/solution`](https://oater.de/solution) and so on..
-   The link to the footer background has to be replaced `style="background-image: url({{ get_asset_url('/atlas-theme-oater-iframe/images/footer.svg') }})”`
-   Links to icons and logos have to be replaced with the svg code
-   If you make changes to the styling of the footer or to the navbar on the astro site, the css and js has to be changed in the template file of the hubspot theme. Copy the generated css/js from `_astro` go to Marketing>Files and Templates>Files>atlas-theme-oater-iframe and paste it into child.css or child.js
-   Keep in mind that you can only use the code from the built site. You can’t copy the code from the component directly

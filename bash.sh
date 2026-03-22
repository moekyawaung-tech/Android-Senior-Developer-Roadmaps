mkdir -p android-developer-roadmap/{.github/ISSUE_TEMPLATE,.github/workflows,docs,examples,site/assets} && cd android-developer-roadmap && \
cat > README.md <<'EOF'
<div align="center">
  <img src="site/assets/banner.png" alt="Android Developer Roadmap Banner" width="100%" />
</div>

# 📱 Android Developer Roadmap

A complete roadmap for becoming an Android Developer from **Beginner** to **Senior**.

## Covers
- Kotlin
- Android Fundamentals
- XML + Jetpack Compose
- MVVM + Clean Architecture
- Room + Retrofit + Hilt
- Coroutines + Flow
- Testing + CI/CD
- Performance + Security
- Leadership + Mentoring

## Detailed Docs

### English
- [Beginner](docs/beginner.md)
- [Junior](docs/junior.md)
- [Mid-Level](docs/mid-level.md)
- [Senior](docs/senior.md)
- [Resources](docs/resources.md)

### Myanmar
- [Beginner (MM)](docs/beginner-mm.md)
- [Junior (MM)](docs/junior-mm.md)
- [Mid-Level (MM)](docs/mid-level-mm.md)
- [Senior (MM)](docs/senior-mm.md)
- [Resources (MM)](docs/resources-mm.md)

## Examples
- [Checklist](examples/checklist.md)
- [Project Ideas](examples/project-ideas.md)

## Goal
Learn → Build → Improve → Lead
EOF

cat > CONTRIBUTING.md <<'EOF'
# Contributing Guide

Thank you for your interest in contributing to this repository.

## How to Contribute
1. Fork the repository
2. Create a new branch
3. Make your changes
4. Commit your work
5. Push your branch
6. Open a Pull Request
EOF

cat > CODE_OF_CONDUCT.md <<'EOF'
# Code of Conduct

## Our Pledge
We are committed to making participation in this project respectful and inclusive for everyone.

## Expected Behavior
- Be respectful
- Give constructive feedback
- Welcome new contributors

## Unacceptable Behavior
- Harassment
- Trolling
- Personal attacks

## Enforcement
Maintainers may remove content that violates this Code of Conduct.
EOF

cat > LICENSE <<'EOF'
MIT License

Copyright (c) 2025

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software.
EOF

cat > .gitignore <<'EOF'
.gradle/
.idea/
.vscode/
build/
**/build/
local.properties
.DS_Store
Thumbs.db
*.log
*.apk
*.aab
.env
.env.*
EOF

cat > .github/PULL_REQUEST_TEMPLATE.md <<'EOF'
## Summary
Describe the changes made.

## Type of Change
- [ ] Docs update
- [ ] Resource added
- [ ] Formatting improvement
- [ ] Bug fix
EOF

cat > .github/mlc_config.json <<'EOF'
{
  "ignorePatterns": [
    {
      "pattern": "^http://localhost"
    }
  ],
  "retryOn429": true,
  "retryCount": 3,
  "aliveStatusCodes": [200, 206, 301, 302]
}
EOF

cat > .github/ISSUE_TEMPLATE/bug_report.md <<'EOF'
---
name: Bug report
about: Report an issue
title: "[Bug] "
labels: bug
assignees: ''
---

## Description
Describe the issue clearly.

## Expected
What should happen?

## Actual
What actually happened?
EOF

cat > .github/ISSUE_TEMPLATE/feature_request.md <<'EOF'
---
name: Feature request
about: Suggest an improvement
title: "[Feature] "
labels: enhancement
assignees: ''
---

## Summary
Describe the idea.

## Why?
Why would it improve the repo?
EOF

cat > .github/workflows/markdown-link-check.yml <<'EOF'
name: Markdown Link Check

on:
  push:
    branches: [main, master]
  pull_request:

jobs:
  markdown-link-check:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: gaurav-nelson/github-action-markdown-link-check@v1
        with:
          config-file: '.github/mlc_config.json'
EOF

cat > .github/workflows/deploy-pages.yml <<'EOF'
name: Deploy GitHub Pages

on:
  push:
    branches:
      - main
      - master
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: pages
  cancel-in-progress: true

jobs:
  deploy:
    environment:
      name: github-pages
      url: \${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Setup Pages
        uses: actions/configure-pages@v5

      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: ./site

      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
EOF

cat > docs/beginner.md <<'EOF'
[← Back to README](../README.md)

# Beginner Android Developer

## Goal
Learn programming fundamentals and Android basics.

## Topics
- Variables, conditions, loops
- Functions and classes
- OOP
- Kotlin basics
- Activity, Fragment, Intent
- XML layouts
- RecyclerView
- Git basics
EOF

cat > docs/junior.md <<'EOF'
[← Back to README](../README.md)

# Junior Android Developer

## Goal
Build structured apps with architecture and real-world features.

## Topics
- Advanced Kotlin
- Coroutines
- Flow
- MVVM
- ViewModel
- Room
- Retrofit
- Hilt
- Compose basics
EOF

cat > docs/mid-level.md <<'EOF'
[← Back to README](../README.md)

# Mid-Level Android Developer

## Goal
Write scalable, maintainable, and testable apps.

## Topics
- Clean Architecture
- Repository Pattern
- Testing
- WorkManager
- Paging 3
- Offline-first
- Security basics
- CI/CD basics
EOF

cat > docs/senior.md <<'EOF'
[← Back to README](../README.md)

# Senior Android Developer

## Goal
Lead architecture, performance, quality, and team growth.

## Topics
- System design
- Multi-module architecture
- Performance optimization
- Security best practices
- Advanced testing
- CI/CD pipelines
- Code review
- Mentoring
- Leadership
EOF

cat > docs/resources.md <<'EOF'
[← Back to README](../README.md)

# Android Learning Resources

## Official
- https://developer.android.com/
- https://kotlinlang.org/

## UI
- https://developer.android.com/jetpack/compose

## Architecture
- https://developer.android.com/topic/architecture
EOF

cat > docs/beginner-mm.md <<'EOF'
[← README သို့ ပြန်သွားရန်](../README.md)

# Beginner Android Developer

## ရည်ရွယ်ချက်
Programming အခြေခံနှင့် Android အခြေခံကို လေ့လာခြင်း။
EOF

cat > docs/junior-mm.md <<'EOF'
[← README သို့ ပြန်သွားရန်](../README.md)

# Junior Android Developer

## ရည်ရွယ်ချက်
Architecture ပါသော Android app များ တည်ဆောက်နိုင်ခြင်း။
EOF

cat > docs/mid-level-mm.md <<'EOF'
[← README သို့ ပြန်သွားရန်](../README.md)

# Mid-Level Android Developer

## ရည်ရွယ်ချက်
Scalable, maintainable, testable app များ ရေးနိုင်ခြင်း။
EOF

cat > docs/senior-mm.md <<'EOF'
[← README သို့ ပြန်သွားရန်](../README.md)

# Senior Android Developer

## ရည်ရွယ်ချက်
Architecture, performance, quality, team growth ကို ဦးဆောင်နိုင်ခြင်း။
EOF

cat > docs/resources-mm.md <<'EOF'
[← README သို့ ပြန်သွားရန်](../README.md)

# Android Learning Resources

- https://developer.android.com/
- https://kotlinlang.org/
EOF

cat > examples/checklist.md <<'EOF'
# Senior Readiness Checklist

- [ ] Build Android apps independently
- [ ] Understand MVVM and Clean Architecture
- [ ] Use Room, Retrofit, Coroutines, Flow, and Hilt
- [ ] Write tests
- [ ] Optimize performance
EOF

cat > examples/project-ideas.md <<'EOF'
# Project Ideas

## Beginner
- Calculator App
- To-Do App
- Notes App

## Junior
- Movie App
- News App
- Expense Tracker
EOF

cat > site/index.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Android Developer Roadmap</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <header class="hero">
    <nav class="nav">
      <div class="logo">📱 Android Roadmap</div>
      <button class="menu-toggle" id="menuToggle">☰</button>

      <div class="nav-links" id="navLinks">
        <a href="#overview" data-en="Overview" data-mm="အကျဉ်းချုပ်">Overview</a>
        <a href="#levels" data-en="Levels" data-mm="အဆင့်များ">Levels</a>
        <a href="#tree" data-en="Roadmap Tree" data-mm="Roadmap Tree">Roadmap Tree</a>
        <a href="#resources" data-en="Resources" data-mm="လေ့လာရန် Link များ">Resources</a>
      </div>

      <div class="controls">
        <button id="langToggle" class="lang-btn">MM</button>
        <button id="pdfBtn" class="pdf-btn">Download PDF</button>
      </div>
    </nav>

    <div class="hero-content">
      <h1 data-en="Android Developer Roadmap" data-mm="Android Developer Roadmap">Android Developer Roadmap</h1>
      <p data-en="Beginner → Junior → Mid-Level → Senior" data-mm="Beginner → Junior → Mid-Level → Senior">
        Beginner → Junior → Mid-Level → Senior
      </p>
      <a class="btn" href="#levels" data-en="Start Learning" data-mm="စတင်လေ့လာရန်">Start Learning</a>
    </div>
  </header>

  <main class="container" id="pdfContent">
    <section class="section" id="overview">
      <h2 data-en="Overview" data-mm="အကျဉ်းချုပ်">Overview</h2>
      <p data-en="A practical roadmap for becoming a modern Android Developer." data-mm="Modern Android Developer တစ်ယောက်ဖြစ်လာရန် practical roadmap တစ်ခုဖြစ်သည်။">
        A practical roadmap for becoming a modern Android Developer.
      </p>
    </section>

    <section class="section">
      <input
        type="text"
        id="searchInput"
        class="search-input"
        placeholder="Search roadmap topics..."
        data-placeholder-en="Search roadmap topics..."
        data-placeholder-mm="Roadmap topics များကို ရှာရန်..."
      />
    </section>

    <section class="section filter-section">
      <button class="filter-btn active" data-filter="all">All</button>
      <button class="filter-btn" data-filter="beginner">Beginner</button>
      <button class="filter-btn" data-filter="junior">Junior</button>
      <button class="filter-btn" data-filter="mid">Mid-Level</button>
      <button class="filter-btn" data-filter="senior">Senior</button>
    </section>

    <section class="section cards" id="levels">
      <div class="card roadmap-card" data-level="beginner" data-keywords="kotlin basics android xml git recyclerview">
        <h3>🟢 Beginner</h3>
        <p>Programming fundamentals, Kotlin basics, Android basics, XML UI, RecyclerView, Git.</p>
      </div>

      <div class="card roadmap-card" data-level="junior" data-keywords="coroutines flow mvvm room retrofit hilt compose">
        <h3>🟡 Junior</h3>
        <p>Coroutines, Flow, MVVM, Room, Retrofit, Hilt, Navigation, Compose basics.</p>
      </div>

      <div class="card roadmap-card" data-level="mid" data-keywords="clean architecture testing workmanager paging offline security cicd">
        <h3>🟠 Mid-Level</h3>
        <p>Clean Architecture, Testing, WorkManager, Paging 3, Offline-first, Security, CI/CD.</p>
      </div>

      <div class="card roadmap-card" data-level="senior" data-keywords="system design modularization performance leadership mentoring security">
        <h3>🔴 Senior</h3>
        <p>System Design, Modularization, Performance, Security, Leadership, Mentoring.</p>
      </div>
    </section>

    <section class="section" id="tree">
      <h2>Interactive Roadmap Tree</h2>
      <div class="tree">
        <details open>
          <summary>🟢 Beginner</summary>
          <ul>
            <li>Programming Fundamentals</li>
            <li>Kotlin Basics</li>
            <li>Android Basics</li>
          </ul>
        </details>

        <details>
          <summary>🟡 Junior</summary>
          <ul>
            <li>Coroutines & Flow</li>
            <li>MVVM</li>
            <li>Room</li>
          </ul>
        </details>

        <details>
          <summary>🟠 Mid-Level</summary>
          <ul>
            <li>Clean Architecture</li>
            <li>Testing</li>
            <li>CI/CD</li>
          </ul>
        </details>

        <details>
          <summary>🔴 Senior</summary>
          <ul>
            <li>System Design</li>
            <li>Performance</li>
            <li>Leadership</li>
          </ul>
        </details>
      </div>
    </section>

    <section class="section" id="resources">
      <h2>Resources</h2>
      <ul class="resource-list">
        <li><a href="https://developer.android.com/" target="_blank">Android Developers</a></li>
        <li><a href="https://kotlinlang.org/" target="_blank">Kotlin Official</a></li>
        <li><a href="https://developer.android.com/jetpack/compose" target="_blank">Jetpack Compose</a></li>
      </ul>
    </section>
  </main>

  <footer class="footer">
    <p>Learn → Build → Improve → Lead</p>
  </footer>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
  <script src="script.js"></script>
</body>
</html>
EOF

cat > site/styles.css <<'EOF'
* {
  box-sizing: border-box;
}

:root {
  --bg: #0d1117;
  --card: #161b22;
  --text: #e6edf3;
  --muted: #8b949e;
  --border: #30363d;
  --primary: #58a6ff;
  --green: #238636;
  --purple: #7f52ff;
}

body {
  margin: 0;
  font-family: Arial, sans-serif;
  background: var(--bg);
  color: var(--text);
}

a {
  color: var(--primary);
  text-decoration: none;
}

.nav {
  position: sticky;
  top: 0;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 16px 24px;
  background: rgba(13, 17, 23, 0.92);
  border-bottom: 1px solid var(--border);
}

.nav-links {
  display: flex;
  gap: 16px;
}

.controls {
  display: flex;
  gap: 10px;
}

.lang-btn,
.menu-toggle,
.filter-btn,
.pdf-btn {
  border: 1px solid var(--border);
  background: var(--card);
  color: var(--text);
  padding: 10px 14px;
  border-radius: 8px;
  cursor: pointer;
}

.pdf-btn {
  background: var(--purple);
  color: white;
}

.menu-toggle {
  display: none;
}

.hero {
  background: linear-gradient(135deg, #111827, #0d1117);
  padding-bottom: 40px;
}

.hero-content {
  text-align: center;
  padding: 80px 20px 40px;
}

.btn {
  display: inline-block;
  padding: 12px 22px;
  background: var(--green);
  color: white;
  border-radius: 10px;
}

.container {
  max-width: 1100px;
  margin: auto;
  padding: 30px 20px 60px;
}

.section {
  margin-bottom: 32px;
}

.search-input {
  width: 100%;
  padding: 14px 16px;
  border-radius: 12px;
  border: 1px solid var(--border);
  background: var(--card);
  color: var(--text);
}

.filter-section {
  display: flex;
  gap: 10px;
  flex-wrap: wrap;
}

.filter-btn.active {
  background: var(--primary);
  color: #fff;
}

.cards {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 18px;
}

.card {
  background: var(--card);
  border: 1px solid var(--border);
  border-radius: 14px;
  padding: 20px;
}

.tree details {
  background: var(--card);
  border: 1px solid var(--border);
  border-radius: 12px;
  padding: 14px 16px;
  margin-bottom: 14px;
}

.footer {
  text-align: center;
  padding: 24px;
  color: var(--muted);
  border-top: 1px solid var(--border);
}

@media (max-width: 992px) {
  .cards {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 768px) {
  .menu-toggle {
    display: inline-block;
  }

  .nav {
    flex-wrap: wrap;
  }

  .nav-links {
    display: none;
    width: 100%;
    flex-direction: column;
    margin-top: 8px;
    background: var(--card);
    padding: 12px;
    border-radius: 10px;
  }

  .nav-links.show {
    display: flex;
  }

  .cards {
    grid-template-columns: 1fr;
  }
}
EOF

cat > site/script.js <<'EOF'
const langToggle = document.getElementById("langToggle");
const menuToggle = document.getElementById("menuToggle");
const navLinks = document.getElementById("navLinks");
const searchInput = document.getElementById("searchInput");
const filterButtons = document.querySelectorAll(".filter-btn");
const roadmapCards = document.querySelectorAll(".roadmap-card");
const pdfBtn = document.getElementById("pdfBtn");

let currentLang = "en";
let currentFilter = "all";

menuToggle.addEventListener("click", () => {
  navLinks.classList.toggle("show");
});

langToggle.addEventListener("click", () => {
  currentLang = currentLang === "en" ? "mm" : "en";
  langToggle.textContent = currentLang === "en" ? "MM" : "EN";

  document.querySelectorAll("[data-en]").forEach((el) => {
    const value = el.getAttribute(currentLang === "en" ? "data-en" : "data-mm");
    if (value) el.textContent = value;
  });

  const placeholder =
    currentLang === "en"
      ? searchInput.getAttribute("data-placeholder-en")
      : searchInput.getAttribute("data-placeholder-mm");

  searchInput.placeholder = placeholder;
});

filterButtons.forEach((button) => {
  button.addEventListener("click", () => {
    filterButtons.forEach((btn) => btn.classList.remove("active"));
    button.classList.add("active");
    currentFilter = button.getAttribute("data-filter");
    applyFilters();
  });
});

searchInput.addEventListener("input", applyFilters);

function applyFilters() {
  const query = searchInput.value.toLowerCase().trim();

  roadmapCards.forEach((card) => {
    const level = card.getAttribute("data-level");
    const keywords = card.getAttribute("data-keywords").toLowerCase();
    const text = card.textContent.toLowerCase();

    const matchesFilter = currentFilter === "all" || currentFilter === level;
    const matchesSearch = keywords.includes(query) || text.includes(query);

    card.style.display = matchesFilter && matchesSearch ? "block" : "none";
  });
}

pdfBtn.addEventListener("click", () => {
  const element = document.getElementById("pdfContent");
  html2pdf().from(element).save("android-developer-roadmap.pdf");
});
EOF

touch site/assets/banner.png && echo "✅ android-developer-roadmap project created successfully"


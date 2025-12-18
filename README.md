# AI for Me (Course Website)

This repository contains the source files for the course **AI for Me**, a university-level introduction to Artificial Intelligence for a general audience.  
The site hosts lecture slides, videos, homework problems, and reference materials for students.


## 📚 Overview

- **Course:** CSC145 – AI for Me
- **Framework:** [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) – **version 9.6.16**  
- **Styling:** Custom color scheme and icons via `extra.css` 
- **Content Organization:** Each lecture has:
  - Lecture slides
  - Lecture recording
  - Homework problems
  - References


## 🚀 Deployment
To host the server locally:
```bash
mkdocs server
```

To build to site for deployment:
```bash
mkdocs build --clean
```

To build to site for deployment to GitHub Pages:
```bash
mkdocs gh-deploy --force
```

To deploy site using just docker
```bash
docker build -t ai_for_me ./nginx
docker run -d --name AIForMe -p 80:80 -p 443:443 ai_for_me
```
Note: You must build the site first and then you can deploy. Docker needs to be running and this command needs to be run from the AIForMe directory (top level of this project)

To bring site down:
```bash
docker stop AIForMe
```

TODO: Create steps for installing SSL certificate so it can be deployed on HTTPS

To deploy site using docker compose (This is the recommended way):
```bash
docker compose up --build -d
```
Note: You **do not** need to build the site first if build times get to be to long you can switch to the pervious deployment. Docker needs to be running and this command needs to be run from the AIForMe directory (top level of this project)

To bring site down (docker compose):
```bash
docker compose down
```

## ➕ Adding a Lecture

Each lecture is its own Markdown file under `docs/lectures/`.

1. Create a new markdown file:
   ```bash
   docs/lectures/[Lecutre Number:02] Lecture Name.md
   ```

2. Add lecture content using the standard structure:

   ```markdown
   ![Lecture Header](assets/images/lectureN-header.png)

   ??? slides "Lecture Slides"
       <iframe src="..." ...></iframe>
       [Download the slides (PPTX)](assets/slides/lectureN.pptx)

   ??? recording "Lecture Recording"
       <iframe src="..." ...></iframe>

   ??? homework "HW Problems"
       *(Homework markdown here)*

   ??? references "References"
       - [Reference](link 1)
       - [Reference](link 2)
   ```


## 📝 Editing Slides

* **Location:** `docs/assets/slides/`
* Replace or update the `.pptx` file for the corresponding lecture.
* Update the Google Drive or embed link in the `??? slides` block in the lecture’s Markdown file. Note that changes to the google drive slides will be reflected automaticaly


## 🎥 Editing Videos

* **Location:** Videos are not stored directly in the repo (to keep size small).
* Update the YouTube or Google Drive video link inside the `??? recording` block in the lecture’s Markdown file.
* If switching hosting platforms, ensure embed links are updated accordingly.


## 📂 Editing Homework

* **Location:** Homework instructions live inside the `??? homework` block of each lecture’s `.md` file.
* Use standard Markdown formatting for problems, lists, and code blocks.
* Keep questions numbered consistently for each lecture.

---

## 📖 Editing References

* **Location:** Inside the `??? references` block of each lecture’s `.md` file.
* Use bullet points (`-`) for each reference.
* Include **title**, **link**, and (optional) a short description.


## 🗂 Repo Structure

```
docs/
  index.md           # Homepage
  assets/            # Site wide assets
    images/          # Lecture header images
  lectures/
    assets/            # Lecture specific assests
        images/          # Lecture header images
        slides/          # Lecture slides (PowerPoint)
    lecture1.md      # Lecture pages
    lecture2.md
styles/
  extra.css          # Custom styling
mkdocs.yml           # MkDocs configuration
```


## 📜 License

### Course Content
Unless otherwise noted, all course materials (lecture notes, homework probelems, diagrams, and written content) are licensed under:

Creative Commons Attribution–NonCommercial–ShareAlike 4.0 International (CC BY-NC-SA 4.0)

© 2025 Collin Connors, Collin Connors, Huseyin Kocak, University of Miami

### Source Code and Configuration
All source code, configuration files, and build scripts are licensed under the MIT License.

## Version Notes
  - python 3.12.7
  - mkdocs 1.6.1
  - mkdocs-materials 9.6.16
  - nginx mianline-alpine:3.22
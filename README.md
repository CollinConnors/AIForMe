# CSC195 – AI for Me (Course Website)

This repository contains the source files for the course **CSC195 – AI for Me**, a university-level introduction to Artificial Intelligence for a general audience.  
The site hosts lecture slides, videos, homework problems, and reference materials for students.


## 📚 Overview

- **Course:** CSC195 – AI for Me
- **Purpose:** Provide an online hub for all course materials, accessible to students at any time.
- **Framework:** [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) – **version 9.6.16**  
- **Styling:** Custom color scheme and icons via `extra.css` 
- **Content Organization:** Each lecture has:
  - Lecture slides
  - Lecture recording
  - Homework problems
  - References


## 🚀 Deployment

> **Coming Soon:** Instructions for deploying with **Docker** and **Nginx**.


## ➕ Adding a Lecture

Each lecture is its own Markdown file under `docs/lectures/`.

1. Create a new markdown file:
   ```bash
   docs/lectures/lectureN.md
    ````

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
       - Reference link 1
       - Reference link 2
   ```
3. Update `mkdocs.yml` navigation to include the new lecture.



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

TBD – Choose an appropriate license for course materials.


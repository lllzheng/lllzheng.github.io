---
title: "Discriminator-Guided Embodied Planning for LLM Agent."
authors:
- Haofu Qian
- Chenjia Bai*
- Jiatao Zhang
- Fei Wu
- Wei Song
- Xuelong Li 

author_notes:
date: "2024-12-16T00:00:00Z"
doi: ""

weight: 42

# Schedule page publish date (NOT publication's date).
publishDate: "2024-12-07T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: In *International Conference on Learning Representations (**ICLR**)*, 2025
publication_short: ""

abstract: Large Language Models (LLMs) have showcased remarkable reasoning capabilities in various domains, yet face challenges in complex embodied tasks due to the need for a coherent long-term policy and context-sensitive environmental understanding. Previous work performed LLM refinement relying on outcome-supervised feedback, which can be costly and ineffective. In this work, we introduce a novel framework, Discriminator-Guided Action Optimization (DGAP), for facilitating the optimization of LLM action plans via step-wise signals. Specifically, we employ a limited set of demonstrations to enable the discriminator to learn a score function, which assesses the alignment between LLM-generated actions and the underlying optimal ones at every step. Based on the discriminator, LLMs are prompted to generate actions that maximize the score, utilizing historical action-score pair trajectories as guidance. Under mild conditions, DGAP resembles critic-regularized optimization and has been demonstrated to achieve a stronger policy than the LLM planner. In experiments across different LLMs (GPT-4, Llama3-70B) in ScienceWorld and VirtualHome, our method achieves superior performance and better efficiency than previous methods.

# Summary. An optional shortened abstract.
summary: We propose a novel framework that generalizes demonstrations to establish critic-regularized grounding and optimization in the long-term planning of LLMs.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://openreview.net/pdf?id=TjP1d8PP8l
url_code: ''
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: ''

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'Image credit: Chenjia Bai'
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects: []
#  - example

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---

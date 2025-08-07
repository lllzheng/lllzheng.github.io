---
title: "Robust Quadrupedal Locomotion via Risk-Averse Policy Learning."
authors:
- Jiyuan Shi
- Chenjia Bai*
- Haoran He
- Lei Han
- Dong Wang
- Bin Zhao
- Mingguo Zhao
- Xiu Li
- Xuelong Li
author_notes:
date: "2024-03-27T00:00:00Z"
doi: ""

weight: 24

# Schedule page publish date (NOT publication's date).
publishDate: "2024-03-27T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: "In *IEEE International Conference on Robotics and Automation (**ICRA**)*, 2024 &nbsp;&nbsp;&nbsp; <mark>**Oral**</mark>"
publication_short: ""

abstract: The robustness of legged locomotion is crucial for quadrupedal robots in challenging terrains. Recently, Reinforcement Learning (RL) has shown promising results in legged locomotion and various methods try to integrate privileged distillation, scene modeling, and external sensors to improve the generalization and robustness of locomotion policies. However, these methods are hard to handle uncertain scenarios such as abrupt terrain changes or unexpected external forces. In this paper, we consider a novel risk-sensitive perspective to enhance the robustness of legged locomotion. Specifically, we employ a distributional value function learned by quantile regression to model the aleatoric uncertainty of environments, and perform risk-averse policy learning by optimizing the worst-case scenarios via a risk distortion measure. Extensive experiments in both simulation environments and a real Aliengo robot demonstrate that our method is efficient in handling various external disturbances, and the resulting policy exhibits improved robustness in harsh and uncertain situations in legged locomotion.

# Summary. An optional shortened abstract.
summary: We consider a novel risk-sensitive perspective to enhance the robustness of legged locomotion.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/pdf/2308.09405.pdf
url_code: ''
url_dataset: ''
url_poster: ''
url_project: https://risk-averse-locomotion.github.io/
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

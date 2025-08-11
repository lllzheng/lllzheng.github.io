---
title: "An efficiently convergent deep reinforcement learning-based trajectory planning method for manipulators in dynamic environments"
authors:
- Li Zheng
- Jiajun Ai
- YaHao Wang
- Xuming Tang
- Shaolei Wu
- Sheng Cheng
- Rui Guo
- Erbao Dong*
author_notes:
date: "2024-05-18T00:00:00Z"
doi: "10.1007/s10846-024-02079-2"

weight: 2

# Schedule page publish date (NOT publication's date).
publishDate: "2024-05-18T00:00:00Z"

# Publication type.
publication_types: ["journal"]

# Publication name and optional abbreviated publication name.
publication: "Journal of Intelligent & Robotic Systems"
publication_short: ""

abstract: "The inspection and maintenance of power distribution network are crucial for efficiently delivering electricity to consumers. Due to the high voltage of power distribution network lines, manual live-line operations are difficult, risky, and inefficient. This paper researches a Power Distribution Network Live-line Operation Robot (PDLOR) with autonomous tool assembly capabilities to replace humans in various high-risk electrical maintenance tasks. To address the challenges of tool assembly in dynamic and unstructured work environments for PDLOR, we propose a framework consisting of deep visual-guided coarse localization and prior knowledge and fuzzy logic driven deep deterministic policy gradient (PKFD-DPG) high-precision assembly algorithm. First, we propose a multiscale identification and localization network based on YOLOv5, which enables the peg-hole close quickly and reduces ineffective exploration. Second, we design a main-auxiliary combined reward system, where the main-line reward uses the hindsight experience replay mechanism, and the auxiliary reward is based on fuzzy logic inference mechanism, addressing ineffective exploration and sparse reward in the learning process. In addition, we validate the effectiveness and advantages of the proposed algorithm through simulations and physical experiments, and also compare its performance with other assembly algorithms. The experimental results show that, for single-tool assembly tasks, the success rate of PKFD-DPG is 15.2% higher than the DDPG with functionized reward functions and 51.7% higher than the PD force control method; for multip-tools assembly tasks, the success rate of PKFD-DPG method is 17% and 53.4% higher than the other methods."

# Summary. An optional shortened abstract.
summary: "We propose a framework for a Power Distribution Network Live-line Operation Robot (PDLOR) with autonomous tool assembly capabilities, addressing challenges in dynamic environments through deep visual-guided localization and a novel assembly algorithm."
tags: []

featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://link.springer.com/article/10.1007/s10846-024-02079-2
url_code: ''
url_dataset: ''
url_poster: '2.pdf'
url_project: ''
url_slides: ''
url_source: ''
url_video: ''
url_wechat: ''

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'Image credit: Li Zheng'
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

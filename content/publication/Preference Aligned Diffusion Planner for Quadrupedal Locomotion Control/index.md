---
title: "Preference Aligned Diffusion Planner for Quadrupedal Locomotion Control."
authors:
- Xinyi Yuan
- Zhiwei Shang
- Zifan Wang
- Chenkai Wang
- Zhao Shan
- Zhenchao Qi
- Meixin Zhu*
- Chenjia Bai*
- Xuelong Li

author_notes:
date: "2024-10-19T00:00:00Z"
doi: ""

weight: 47

# Schedule page publish date (NOT publication's date).
publishDate: "2024-10-19T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: In *IEEE/RSJ International Conference on Intelligent Robots and Systems (**IROS**)*, 2025
publication_short: ""

abstract: "Diffusion models demonstrate superior performance in capturing complex distributions from large-scale datasets, providing a promising solution for quadrupedal locomotion control. However, offline policy is sensitive to Out-of-Distribution (OOD) states due to the limited state coverage in the datasets. In this work, we propose a two-stage learning framework combining offline learning and online preference alignment for legged locomotion control. Through the offline stage, the diffusion planner learns the joint distribution of state-action sequences from expert datasets without using reward labels. Subsequently, we perform the online interaction in the simulation environment based on the trained offline planer, which significantly addresses the OOD issues and improves the robustness. Specifically, we propose a novel weak preference labeling method without the ground-truth reward or human preferences. The proposed method exhibits superior stability and velocity tracking accuracy in pacing, trotting, and bounding gait under both slow- and high-speed scenarios and can perform zero-shot transfer to the real Unitree Go1 robots."

# Summary. An optional shortened abstract.
summary: We develop a learning framework combining offline diffusion planner and online preference alignment with weak preference labeling for legged locomotion control.
tags: []

featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/abs/2410.13586
url_code: ''
url_dataset: ''
url_poster: ''
url_project: https://shangjaven.github.io/preference-aligned-diffusion-legged/
url_slides: ''
url_source: ''
url_video: ''
url_wechat: 'https://mp.weixin.qq.com/s/un_MpmNE1gEmgQGrAq0nkg'

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

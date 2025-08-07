---
title: "Learning an Actionable Discrete Diffusion Policy via Large-Scale Actionless Video Pre-Training."
authors:
- Haoran He
- Chenjia Bai*
- Ling Pan
- Weinan Zhang
- Bin Zhao
- Xuelong Li
author_notes:
date: "2024-02-22T00:00:00Z"
doi: ""

weight: 33

# Schedule page publish date (NOT publication's date).
publishDate: "2024-02-22T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: "In *Neural Information Processing Systems (**NeurIPS**)*, 2024"
publication_short: ""

abstract: Learning a generalist embodied agent capable of completing multiple tasks poses challenges, primarily stemming from the scarcity of action-labeled robotic datasets. In contrast, a vast amount of human videos exist, capturing intricate tasks and interactions with the physical world. Promising prospects arise for utilizing actionless human videos for pre-training and transferring the knowledge to facilitate robot policy learning through limited robot demonstrations. However, it remains a challenge due to the domain gap between humans and robots. Moreover, it is difficult to extract useful information representing the dynamic world from human videos, because of its noisy and multimodal data structure. In this paper, we introduce a novel framework to tackle these challenges, which leverages a unified discrete diffusion to combine generative pre-training on human videos and policy fine-tuning on a small number of action-labeled robot videos. We start by compressing both human and robot videos into unified video tokens. In the pre-training stage, we employ a discrete diffusion model with a mask-and-replace diffusion strategy to predict future video tokens in the latent space. In the fine-tuning stage, we harness the imagined future videos to guide low-level action learning with a limited set of robot data. Experiments demonstrate that our method generates high-fidelity future videos for planning and enhances the fine-tuned policies compared to previous state-of-the-art approaches with superior performance.

# Summary. An optional shortened abstract.
summary: We introduce a novel framework that leverages a unified discrete diffusion to combine generative pre-training on human videos and policy fine-tuning on a small number of action-labeled robot videos.
  
tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/abs/2402.14407
url_code: ''
url_dataset: ''
url_poster: ''
url_project: https://video-diff.github.io/
url_slides: ''
url_source: ''
url_video: ''
url_wechat: ''

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

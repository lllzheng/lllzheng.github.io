---
title: "Revisiting Multi-Agent World Modeling from a Diffusion-Inspired Perspective"
authors:
- Yang Zhang
- Xinran Li
- Jianing Ye
- Delin Qu
- Shuang Qiu
- Chongjie Zhang
- Xiu Li
- Chenjia Bai*

author_notes:
date: "2023-03-09T00:00:00Z"
doi: ""
draft: false

weight: 52

# Schedule page publish date (NOT publication's date).
publishDate: "2023-03-09T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["under-review"]

# Publication name and optional abbreviated publication name.
publication: "under review"
publication_short: ""

abstract: World models have recently attracted growing interest in Multi-Agent Reinforcement Learning (MARL) due to their ability to improve sample efficiency for policy learning. However, accurately modeling environments in MARL is challenging due to the exponentially large joint action space and highly uncertain dynamics inherent in multi-agent systems. To address this, we reduce modeling complexity by shifting from jointly modeling the entire state-action transition dynamics to focusing on the state space alone at each timestep through sequential agent modeling. Specifically, our approach enables the model to progressively resolve uncertainty while capturing the structured dependencies among agents, providing a more accurate representation of how agents influence the state. Interestingly, this sequential revelation of agents' actions in a multi-agent system aligns with the reverse process in diffusion models—a class of powerful generative models known for their expressiveness and training stability compared to autoregressive or latent variable models. Leveraging this insight, we develop a flexible and robust world model for MARL using diffusion models. Our method, Diffusion-Inspired Multi-Agent world model (DIMA), achieves state-of-the-art performance across multiple multi-agent control benchmarks, significantly outperforming prior world models in terms of final return and sample efficiency, including MAMuJoCo and Bi-DexHands. DIMA establishes a new paradigm for constructing multi-agent world models, advancing the frontier of MARL research.

# Summary. An optional shortened abstract.
summary: We propose Diffusion-Inspired Multi-Agent world model (DIMA), a novel framework for multi-agent reinforcement learning that leverages diffusion models to reduce modeling complexity and improve sample efficiency.

tags: []
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/abs/2505.20922
url_code: ''
url_dataset: ''
url_poster: ''
url_project: ''
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

---
title: "Variational Dynamic for Self-Supervised Exploration in Deep Reinforcement Learning."
authors:
- Chenjia Bai
- Peng Liu
- Kaiyu Liu
- Lingxiao Wang
- Yingnan Zhao
- Lei Han
author_notes:
date: "2021-03-09T00:00:00Z"
doi: ""

weight: 4

# Schedule page publish date (NOT publication's date).
publishDate: "2021-03-09T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "*IEEE Transactions on Neural Networks and Learning Systems*, 2021 "
publication_short: ""

abstract: "Efficient exploration remains a challenging problem in reinforcement learning, especially for tasks where extrinsic rewards from environments are sparse or even totally disregarded. Significant advances based on intrinsic motivation show promising results in simple environments but often get stuck in environments with multimodal and stochastic dynamics. In this work, we propose a variational dynamic model based on the conditional variational inference to model the multimodality and stochasticity. We consider the environmental state-action transition as a conditional generative process by generating the next-state prediction under the condition of the current state, action, and latent variable, which provides a better understanding of the dynamics and leads a better performance in exploration. We derive an upper bound of the negative log-likelihood of the environmental transition and use such an upper bound as the intrinsic reward for exploration, which allows the agent to learn skills by self-supervised exploration without observing extrinsic rewards. We evaluate the proposed method on several image-based simulation tasks and a real robotic manipulating task. Our method outperforms several state-of-the-art environment model-based exploration approaches."

# Summary. An optional shortened abstract.
summary: We propose a variational dynamic model based on the conditional variational inference to model the multimodality and stochasticity.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/abs/2010.08755
url_code: https://github.com/Baichenjia/VDM
url_dataset: ''
url_poster: ''
url_project: https://sites.google.com/view/exploration-vdm
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

---
title: "Contrastive UCB: Provably Efficient Contrastive Self-Supervised Learning in Online Reinforcement Learning."
authors:
- Shuang Qiu
- Lingxiao Wang
- Chenjia Bai
- Zhuoran Yang
- Zhaoran Wang
author_notes:
date: "2022-03-15T00:00:00Z"
doi: ""

weight: 11

# Schedule page publish date (NOT publication's date).
publishDate: "2022-03-15T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: "In *International Conference on Machine Learning (**ICML**)*, 2022  &nbsp;&nbsp;&nbsp;  <mark>**Spotlight**</mark>"
publication_short: ""

abstract: "In view of its power in extracting feature representation, contrastive self-supervised learning has been successfully integrated into the practice of (deep) reinforcement learning (RL), leading to efficient policy learning in various applications. Despite its tremendous empirical successes, the understanding of contrastive learning for RL remains elusive. To narrow such a gap, we study how RL can be empowered by contrastive learning in a class of Markov decision processes (MDPs) and Markov games (MGs) with low-rank transitions. For both models, we propose to extract the correct feature representations of the low-rank model by minimizing a contrastive loss. Moreover, under the online setting, we propose novel upper confidence bound (UCB)-type algorithms that incorporate such a contrastive loss with online RL algorithms for MDPs or MGs. We further theoretically prove that our algorithm recovers the true representations and simultaneously achieves sample efficiency in learning the optimal policy and Nash equilibrium in MDPs and MGs. We also provide empirical studies to demonstrate the efficacy of the UCB-based contrastive learning method for RL. To the best of our knowledge, we provide the first provably efficient online RL algorithm that incorporates contrastive learning for representation learning."

# Summary. An optional shortened abstract.
summary: We study how RL can be empowered by contrastive learning in a class of Markov decision processes (MDPs) and Markov games (MGs) with low-rank transitions. For both models, we propose to extract the correct feature representations of the low-rank model by minimizing a contrastive loss.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/abs/2207.14800
url_code: https://github.com/Baichenjia/Contrastive-UCB
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

---
title: "False Correlation Reduction for Offline Reinforcement Learning."
authors:
- Zhihong Deng
- Zuyue Fu
- Lingxiao Wang
- Zhuoran Yang
- Chenjia Bai
- Tianyi Zhou
- Jing Jiang
author_notes:
date: "2023-03-18T00:00:00Z"
doi: ""

weight: 14

# Schedule page publish date (NOT publication's date).
publishDate: "2023-03-18T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: "*IEEE Transactions on Pattern Analysis and Machine Intelligence (**TPAMI**)*, 2023"
publication_short: ""

abstract: "Offline reinforcement learning (RL) harnesses the power of massive datasets for resolving sequential decision problems. Most existing papers only discuss defending against out-of-distribution (OOD) actions while we investigate a broader issue, the false correlations between epistemic uncertainty and decision-making, an essential factor that causes suboptimality. In this paper, we propose falSe COrrelation REduction (SCORE) for offline RL, a practically effective and theoretically provable algorithm. We empirically show that SCORE achieves the SoTA performance with 3.1x acceleration on various tasks in a standard benchmark (D4RL). The proposed algorithm introduces an annealing behavior cloning regularizer to help produce a high-quality estimation of uncertainty which is critical for eliminating false correlations from suboptimality. Theoretically, we justify the rationality of the proposed method and prove its convergence to the optimal policy with a sublinear rate under mild assumptions."

# Summary. An optional shortened abstract.
summary: We propose falSe COrrelation REduction (SCORE) for offline RL, a practically effective and theoretically provable algorithm.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/abs/2110.12468
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

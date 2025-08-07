---
title: "Monotonic Quantile Network for Worst-Case Offline Reinforcement Learning."
authors:
- Chenjia Bai
- Ting Xiao
- Zhoufan Zhu
- Lingxiao Wang
- Fan Zhou
- Peng Liu
author_notes:
date: "2022-03-15T00:00:00Z"
doi: ""

weight: 10

# Schedule page publish date (NOT publication's date).
publishDate: "2022-03-15T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "*IEEE Transactions on Neural Networks and Learning Systems*, 2022"
publication_short: ""

abstract: "A key challenge in offline reinforcement learning (RL) is how to ensure the learned offline policy is safe, especially in safety-critical domains. In this article, we focus on learning a distributional value function in offline RL and optimizing a worst-case criterion of returns. However, optimizing a distributional value function in offline RL can be hard, since the crossing quantile issue is serious, and the distribution shift problem needs to be addressed. To this end, we propose monotonic quantile network (MQN) with conservative quantile regression (CQR) for risk-averse policy learning. First, we propose an MQN to learn the distribution over returns with non-crossing guarantees of the quantiles. Then, we perform CQR by penalizing the quantile estimation for out-of-distribution (OOD) actions to address the distribution shift in offline RL. Finally, we learn a worst-case policy by optimizing the conditional value-at-risk (CVaR) of the distributional value function. Furthermore, we provide theoretical analysis of the fixed-point convergence in our method. We conduct experiments in both risk-neutral and risk-sensitive offline settings, and the results show that our method obtains safe and conservative behaviors in robotic locomotion tasks."

# Summary. An optional shortened abstract.
summary: We propose monotonic quantile network (MQN) with conservative quantile regression (CQR) for risk-averse policy learning.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://ieeexplore.ieee.org/document/9940310
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

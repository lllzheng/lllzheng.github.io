---
title: "Diverse Randomized Value Functions: A Provably Pessimistic Approach for Offline Reinforcement Learning."
authors:
- Xudong Yu
- Chenjia Bai*
- Hongyi Guo
- Changhong Wang*
- Zhen Wang
author_notes:
date: "2023-03-18T00:00:00Z"
doi: ""

weight: 15

# Schedule page publish date (NOT publication's date).
publishDate: "2023-03-18T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "In *Information Sciences*, 2023"
publication_short: ""

abstract: "Offline Reinforcement Learning (RL) faces distributional shift and unreliable value estimation, especially for out-of-distribution (OOD) actions. To address this, existing uncertainty-based methods penalize the value function with uncertainty quantification and demand numerous ensemble networks, posing computational challenges and suboptimal outcomes. In this paper, we introduce a novel strategy employing diverse randomized value functions to estimate the posterior distribution of Q-values. It provides robust uncertainty quantification and estimates lower confidence bounds (LCB) of Q-values. By applying moderate value penalties for OOD actions, our method fosters a provably pessimistic approach. We also emphasize on diversity within randomized value functions and enhance efficiency by introducing a diversity regularization method, reducing the requisite number of networks. These modules lead to reliable value estimation and efficient policy learning from offline data. Theoretical analysis shows that our method recovers the provably efficient LCB-penalty under linear MDP assumptions. Extensive empirical results also demonstrate that our proposed method significantly outperforms baseline methods in terms of performance and parametric efficiency."  

# Summary. An optional shortened abstract.
summary: "We introduce a novel strategy employing diverse randomized value functions to estimate the posterior distribution of Q-values."

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://www.sciencedirect.com/science/article/pii/S0020025524010600
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

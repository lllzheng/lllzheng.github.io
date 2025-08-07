---
title: "Cross-Domain Policy Adaptation by Capturing Representation Mismatch."
authors:
- Jiafei Lyu
- Chenjia Bai
- Jing-Wen Yang
- Zongqing Lu
- Xiu Li
author_notes:
date: "2024-03-30T00:00:00Z"
doi: ""

weight: 26

# Schedule page publish date (NOT publication's date).
publishDate: "2024-03-30T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: In *International Conference on Machine Learning (**ICML**)*, 2024
publication_short: ""

abstract: "It is vital to learn effective policies that can be transferred to different domains with dynamics discrepancies in reinforcement learning (RL). In this paper, we consider dynamics adaptation settings where there exists dynamics mismatch between the source domain and the target domain, and one can get access to sufficient source domain data, while can only have limited interactions with the target domain. Existing methods address this problem by learning domain classifiers, performing data filtering from a value discrepancy perspective, etc. Instead, we tackle this challenge from a decoupled representation learning perspective. We perform representation learning only in the target domain and measure the representation deviations on the transitions from the source domain, which we show can be a signal of dynamics mismatch. We also show that representation deviation upper bounds performance difference of a given policy in the source domain and target domain, which motivates us to adopt representation deviation as a reward penalty. The produced representations are not involved in either policy or value function, but only serve as a reward penalizer. We conduct extensive experiments on environments with kinematic and morphology mismatch, and the results show that our method exhibits strong performance on many tasks."
  
# Summary. An optional shortened abstract.
summary: We consider dynamics adaptation settings where there exists dynamics mismatch between the source domain and the target domain, and one can get access to sufficient source domain data, while can only have limited interactions with the target domain.
  
tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/abs/2405.15369
url_code: https://github.com/dmksjfl/PAR
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

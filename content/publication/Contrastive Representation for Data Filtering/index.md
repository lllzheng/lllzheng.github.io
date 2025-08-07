---
title: "Contrastive Representation for Data Filtering in Cross-Domain Offline Reinforcement Learning."
authors:
- Xiaoyu Wen
- Chenjia Bai*
- Kang Xu
- Xudong Yu
- Yang Zhang
- Xuelong Li
- Zhen Wang
author_notes:
date: "2024-05-10T00:00:00Z"
doi: ""

weight: 29

# Schedule page publish date (NOT publication's date).
publishDate: "2024-05-10T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: In *International Conference on Machine Learning (**ICML**)*, 2024
publication_short: ""

abstract: Cross-domain offline reinforcement learning leverages source domain data with diverse transition dynamics to alleviate the data requirement for the target domain. However, simply merging the data of two domains leads to performance degradation due to the dynamics mismatch. Existing methods address this problem by measuring the dynamics gap via domain classifiers while relying on the assumptions of the transferability of paired domains. In this paper, we propose a novel representation-based approach to measure the domain gap, where the representation is learned through a contrastive objective by sampling transitions from different domains. We show that such an objective recovers the mutual-information gap of transition functions in two domains without suffering from the unbounded issue of the dynamics gap in handling significantly different domains. Based on the representations, we introduce a data filtering algorithm that selectively shares transitions from the source domain according to the contrastive score functions. Empirical results on various tasks demonstrate that our method achieves superior performance, using only 10% of the target data to achieve 89.2% of the performance on 100% target dataset with state-of-the-art methods.
  
# Summary. An optional shortened abstract.
summary: We propose a novel representation-based approach to measure the domain gap, where the representation is learned through a contrastive objective by sampling transitions from different domains.
  
tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/abs/2405.06192
url_code: https://github.com/BattleWen/IGDF
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

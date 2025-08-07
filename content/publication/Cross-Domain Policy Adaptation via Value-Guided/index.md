---
title: "Cross-Domain Policy Adaptation via Value-Guided Data Filtering."
authors:
- Kang Xu
- Chenjia Bai*
- Xiaoteng Ma
- Dong Wang
- Bin Zhao
- Zhen Wang
- Xuelong Li
- Wei Li
author_notes:
date: "2023-03-23T00:00:00Z"
doi: ""

weight: 20

# Schedule page publish date (NOT publication's date).
publishDate: "2023-03-23T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: "In *Neural Information Processing Systems (**NeurIPS**)*, 2023"
publication_short: ""

abstract: "Generalizing policies across different domains with dynamics mismatch poses a significant challenge in reinforcement learning. For example, a robot learns the policy in a simulator, but when it is deployed in the real world, the dynamics of the environment may be different. Given the source and target domain with dynamics mismatch, we consider the online dynamics adaptation problem, in which case the agent can access sufficient source domain data while online interactions with the target domain are limited. Existing research has attempted to solve the problem from the dynamics discrepancy perspective. In this work, we reveal the limitations of these methods and explore the problem from the value difference perspective via a novel insight on the value consistency across domains. Specifically, we present the Value-Guided Data Filtering (VGDF) algorithm, which selectively shares transitions from the source domain based on the proximity of paired value targets across the two domains. Empirical results on various environments with kinematic and morphology shifts demonstrate that our method achieves superior performance compared to prior approaches."
  
# Summary. An optional shortened abstract.
summary: We reveal the limitations of these methods and explore the problem from the value difference perspective via a novel insight on the value consistency across domains.
  
tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://openreview.net/pdf?id=qdM260dXsa
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

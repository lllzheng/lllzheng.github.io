---
title: "Online Iterative Self-Alignment for Radiology Report Generation."
authors:
- Ting Xiao
- Lei Shi
- Yang Zhang
- HaoFeng Yang 
- Zhe Wang
- Chenjia Bai*

author_notes:
date: "2024-05-23T00:00:00Z"
doi: ""

weight: 46

# Schedule page publish date (NOT publication's date).
publishDate: "2024-05-23T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: In *Annual Meeting of the Association for Computational Linguistics (**ACL**)*, 2025
publication_short: ""

abstract: Radiology Report Generation (RRG) is an important research topic for relieving radiologists' heavy workload. Existing RRG models mainly rely on supervised fine-tuning (SFT) based on different model architectures using data pairs of radiological images and corresponding radiologist-annotated reports. Recent research has shifted focus to post-training improvements, aligning RRG model outputs with human preferences using reinforcement learning (RL). However, the limited data coverage of high-quality annotated data poses risks of overfitting and generalization. This paper proposes a novel Online Iterative Self-Alignment (OISA) method for RRG that consists of four stages, self-generation of diverse data, self-evaluation for multi-objective preference data, self-alignment for multi-objective optimization and self-iteration for further improvement. Our approach allows for generating varied reports tailored to specific clinical objectives, enhancing the overall performance of the RRG model iteratively. Unlike existing methods, our framework significantly increases data quality and optimizes performance through iterative multi-objective optimization. Experimental results demonstrate that our method surpasses previous approaches, achieving state-of-the-art performance across multiple evaluation metrics.

# Summary. An optional shortened abstract.
summary:  We propose an online iterative self-alignment method for radiology report generation that iteratively generates unlimited preference data and automatically aligns with radiologists' multiple objectives.

tags: []
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://openreview.net/forum?id=rTSAzqYPMM#discussion
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

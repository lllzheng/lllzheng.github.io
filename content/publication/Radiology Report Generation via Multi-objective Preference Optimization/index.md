---
title: "Radiology Report Generation via Multi-objective Preference Optimization."
authors:
- Ting Xiao
- Lei Shi
- Peng Liu
- Zhe Wang
- Chenjia Bai*
author_notes:
date: "2024-09-16T00:00:00Z"
doi: ""

weight: 38

# Schedule page publish date (NOT publication's date).
publishDate: "2024-04-07T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: In *AAAI Conference on Artificial Intelligence (**AAAI**)*, 2025
publication_short: ""

abstract: Automatic Radiology Report Generation (RRG) is an important topic for alleviating the substantial workload of radiologists. Existing RRG approaches rely on supervised regression based on different architectures or additional knowledge injection, while the generated report may not align optimally with radiologists’ preferences. Especially, since the preferences of radiologists are inherently heterogeneous and multi-dimensional, e.g., some may prioritize report fluency, while others emphasize clinical accuracy. To address this problem, we propose a new RRG method via Multi-objective Preference Optimization (MPO) to align the pre-trained RRG model with multiple human preferences, which can be formulated by multi-dimensional reward functions and optimized by multi-objective reinforcement learning (RL). Specifically, we use a preference vector to represent the weight of preferences and use it as a condition for the RRG model. Then, a linearly weighed reward is obtained via a dot product between the preference vector and multi-dimensional reward. Next, the RRG model is optimized to align with the preference vector by optimizing such a reward via RL. In the training stage, we randomly sample diverse preference vectors from the preference space and align the model by optimizing the weighted multi-objective rewards, which leads to an optimal policy on the entire preference space. When inference, our model can generate reports aligned with specific preferences without further fine-tuning. Extensive experiments on two public datasets show the proposed method can generate reports that cater to different preferences in a single model and achieve state-of-the-art performance.

# Summary. An optional shortened abstract.
summary: We propose a new radiology report generation method that aligns the pre-trained model with multiple human preferences via preference-guided multi-objective optimization reinforcement learning.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/abs/2412.08901
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

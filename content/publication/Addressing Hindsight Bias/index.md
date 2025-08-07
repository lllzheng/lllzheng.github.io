---
title: "Addressing Hindsight Bias in Multi-Goal Reinforcement Learning."
authors:
- Chenjia Bai
- Lingxiao Wang
- Yixin Wang
- Rui Zhao
- Chenyao Bai
- Peng Liu
author_notes:
date: "2021-03-10T00:00:00Z"
doi: ""

weight: 5

# Schedule page publish date (NOT publication's date).
publishDate: "2021-03-10T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "*IEEE Transactions on Cybernetics*, 2021"
publication_short: ""

abstract: "Multigoal reinforcement learning (RL) extends the typical RL with goal-conditional value functions and policies. One efficient multigoal RL algorithm is the hindsight experience replay (HER). By treating a hindsight goal from failed experiences as the original goal, HER enables the agent to receive rewards frequently. However, a key assumption of HER is that the hindsight goals do not change the likelihood of the sampled transitions and trajectories used in training, which is not the fact according to our analysis. More specifically, we show that using hindsight goals changes such a likelihood and results in a biased learning objective for multigoal RL. We analyze the hindsight bias due to this use of hindsight goals and propose the bias-corrected HER (BHER), an efficient algorithm that corrects the hindsight bias in training. We further show that BHER outperforms several state-of-the-art multigoal RL approaches in challenging robotics tasks."

# Summary. An optional shortened abstract.
summary: We analyze the hindsight bias due to this use of hindsight goals and propose the bias-corrected HER (BHER), an efficient algorithm that corrects the hindsight bias in training.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://ieeexplore.ieee.org/document/9531338
url_code: https://github.com/baichenjia/BHER
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

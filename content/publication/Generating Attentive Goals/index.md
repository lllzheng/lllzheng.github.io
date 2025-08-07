---
title: "Generating Attentive Goals for Prioritized Hindsight Reinforcement Learning."
authors:
- Peng Liu
- Chenjia Bai
- Yingnan Zhao
- Chenyao Bai
- Wei Zhao
- Xianglong Tang
author_notes:
date: "2020-03-08T00:00:00Z"
doi: ""

weight: 3

# Schedule page publish date (NOT publication's date).
publishDate: "2020-03-08T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "*Knowledge-Based Systems (KBS)*, 2020"
publication_short: ""

abstract: "Typical reinforcement learning (RL) performs a single task and does not scale to problems in which an agent must perform multiple tasks, such as moving a robot arm to different locations. The multi-goal framework extends typical RL using a goal-conditional value function and policy, whereby the agent pursues different goals in different episodes. By treating a virtual goal as the desired one, and frequently giving the agent rewards, hindsight experience replay has achieved promising results in the sparse-reward setting of multi-goal RL. However, these virtual goals are uniformly sampled after the replay state from experiences, regardless of their significance. We propose a novel prioritized hindsight model for multi-goal RL in which the agent is provided with more valuable goals, as measured by the expected temporal-difference (TD) error. An attentive goals generation (AGG) network, which consists of temporal convolutions, multi-head dot product attentions, and a last-attention network, is structured to generate the virtual goals to replay. The AGG network is trained by following the gradient of TD-error calculated by an actor–critic model, and generates goals to maximize the expected TD-error with replay transitions. The whole network is fully differentiable and can be learned in an end-to-end manner. The proposed method is evaluated on several robotic manipulating tasks and demonstrates improved sample efficiency and performance."

# Summary. An optional shortened abstract.
summary: We propose a novel prioritized hindsight model for multi-goal RL in which the agent is provided with more valuable goals, as measured by the expected temporal-difference (TD) error.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://doi.org/10.1016/j.knosys.2020.106140
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

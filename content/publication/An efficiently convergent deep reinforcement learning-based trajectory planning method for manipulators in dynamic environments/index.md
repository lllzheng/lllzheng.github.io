---
title: "An efficiently convergent deep reinforcement learning-based trajectory planning method for manipulators in dynamic environments"
authors:
- Li Zheng
- YaHao Wang
- Run Yang
- Shaolei Wu
- Rui Guo
- Erbao Dong*
author_notes:
date: "2023-03-04T00:00:00Z"
doi: "10.1007/s10846-023-01822-5"

weight: 50

# Schedule page publish date (NOT publication's date).
publishDate: "2023-03-04T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["journal"]

# Publication name and optional abbreviated publication name.
publication: "Journal of Intelligent & Robotic Systems"
publication_short: ""

abstract: "Recently, deep reinforcement learning (DRL)-based trajectory planning methods have been designed for manipulator trajectory planning, given their potential in solving the problem of multidimensional spatial trajectory planning. However, many DRL models that have been proposed for manipulators working in dynamic environments face difficulties in obtaining the optimal strategy, thereby preventing them from reaching convergence because of massive ineffective exploration and sparse rewards. In this paper, we solve the inefficient convergence problem at the two levels of the action selection strategy and reward functions. First, this paper designs a dynamic action selection strategy that has a high probability of providing positive samples in the pre-training period by using a variable guide item and effectively reduces invalid exploration. Second, this study proposes a combinatorial reward function that combines the artificial potential field method with a time-energy function, thereby greatly improving the efficiency and stability of DRL-based methods for manipulators trajectory planning in dynamic working environments. Extensive experiments are conducted using the CoppeliaSim simulation model with a freely moving obstacle and the 6-DOF manipulator. The results show that the proposed dynamic action selection strategy and combinatorial reward function can improve the convergence rate on the DDPG, TD3, and SAC DRL algorithms by up to 3-5 times. Furthermore, the mean value of the reward function increases by up to 1.47-2.70 times, and the standard deviation decreases by 27.56% to 56.60%."

# Summary. An optional shortened abstract.
summary: "We address the inefficient convergence problem in DRL-based trajectory planning for manipulators in dynamic environments by proposing a dynamic action selection strategy and combinatorial reward function."
tags: []

featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://link.springer.com/article/10.1007/s10846-023-01822-5
url_code: ''
url_dataset: ''
url_poster: '1.pdf'
url_project: ''
url_slides: ''
url_source: ''
url_video: ''
url_wechat: ''

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'Image credit: Li Zheng'
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

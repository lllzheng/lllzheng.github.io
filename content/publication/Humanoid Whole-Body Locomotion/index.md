---
title: "Humanoid Whole-Body Locomotion on Narrow Terrain via Dynamic Balance and Reinforcement Learning."
authors:
- Weiji Xie
- Chenjia Bai*
- Jiyuan Shi
- Junkai Yang
- Yunfei Ge
- Weinan Zhang*
- Xuelong Li

author_notes:
date: "2023-03-09T00:00:00Z"
doi: ""
draft: false

weight: 49

# Schedule page publish date (NOT publication's date).
publishDate: "2023-03-09T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: In *IEEE/RSJ International Conference on Intelligent Robots and Systems (**IROS**)*, 2025

publication_short: ""

abstract: Humans possess delicate dynamic balance mechanisms that enable them to maintain stability across diverse terrains and under extreme conditions. However, despite significant advances recently, existing locomotion algorithms for humanoid robots are still struggle to traverse extreme environments, especially in cases that lack external perception (e.g., vision or LiDAR). This is because current methods often rely on gait-based or perception-condition rewards, lacking effective mechanisms to handle unobservable obstacles and sudden balance loss. To address this challenge, we propose a novel whole-body locomotion algorithm based on dynamic balance and Reinforcement Learning (RL) that enables humanoid robots to traverse extreme terrains, particularly narrow pathways and unexpected obstacles, using only proprioception. Specifically, we introduce a dynamic balance mechanism by leveraging an extended measure of Zero-Moment Point (ZMP)-driven rewards and task-driven rewards in a whole-body actor-critic framework, aiming to achieve coordinated actions of the upper and lower limbs for robust locomotion. Experiments conducted on a full-sized Unitree H1-2 robot verify the ability of our method to maintain balance on extremely narrow terrains and under external disturbances, demonstrating its effectiveness in enhancing the robot's adaptability to complex environments.


# Summary. An optional shortened abstract.
summary:  we propose a novel whole-body locomotion algorithm based on dynamic balance and Reinforcement Learning (RL) that enables humanoid robots to traverse extreme terrains, particularly narrow pathways and unexpected obstacles, using only proprioception.

tags: []
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/abs/2502.17219
url_code: ''
url_dataset: ''
url_poster: ''
url_project: https://whole-body-loco.github.io/
url_slides: ''
url_source: ''
url_video: ''
url_wechat: 'https://mp.weixin.qq.com/s/lmR0DcnBWmm6MrzgYBSnnw'

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

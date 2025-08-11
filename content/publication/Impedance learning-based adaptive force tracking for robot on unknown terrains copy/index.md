---
title: "Impedance learning-based adaptive force tracking for robot on unknown terrains copy"
authors:
- Yanghong Li
- Li Zheng
- Yahao Wang
- Shiwu Zhang
- Erbao Dong*
author_notes:
date: "2025-01-15T00:00:00Z"
doi: "10.1109/TRO.2025.3530345"

weight: 40

# Schedule page publish date (NOT publication's date).
publishDate: "2025-01-15T00:00:00Z"

# Publication type.
publication_types: ["Journal"]

# Publication name and optional abbreviated publication name.
publication: "IEEE Transactions on Robotics"
publication_short: ""

abstract: "Aiming at the robust force tracking challenge for robots in continuous contact with uncertain environments, a novel adaptive variable impedance control policy based on deep reinforcement learning (DRL) is proposed in this article. The policy includes a neural network feedforward controller and a variable impedance feedback controller. Based on the DRL algorithm, the iterative network feedforward controller explores and prelearns the optimal policy for impedance tuning in simulation scenarios with randomly generated terrain. The converged results are then used as feedforward inputs in the variable impedance feedback controller to improve the force-tracking performance of the robot during contact. A simplified dynamic contact model between the robot and the uncertain environment called the “couch model,” which satisfies the Lipschiz continuity condition, is developed to provide boundary conditions for the safe transfer of capabilities learned in simulation to real robots. Unlike the exhaustive example that relies on the completeness of the learning samples, this article gives theoretical proofs of the stability and convergence of the proposed control policy via Lyapunov’s theorem and contraction mapping principle. The control method proposed in this article is more interpretable and shows higher sample utilization efficiency and generalization ability in simulations and experiments."

# Summary. An optional shortened abstract.
summary: "We propose a novel adaptive variable impedance control policy based on deep reinforcement learning (DRL) to address the robust force tracking challenge for robots in uncertain environments."
tags: []

featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://ieeexplore.ieee.org/abstract/document/10842469
url_code: ''
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: './attached_video.mp4'
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

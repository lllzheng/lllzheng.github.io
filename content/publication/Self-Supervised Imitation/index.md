---
title: "Self-Supervised Imitation for Offline Reinforcement Learning with Hindsight Relabeling."
authors:
- Xudong Yu
- Chenjia Bai
- Changhong Wang
- Dengxiu Yu
- C. L. Philip Chen
- Zhen Wang*
author_notes:
date: "2022-03-16T00:00:00Z"
doi: ""

weight: 12

# Schedule page publish date (NOT publication's date).
publishDate: "2022-03-16T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "*IEEE Transactions on Systems, Man, and Cybernetics: Systems*. 2022"
publication_short: ""

abstract: "Reinforcement learning (RL) requires a lot of interactions with the environment, which is usually expensive or dangerous in real-world tasks. To address this problem, offline RL considers learning policies from fixed datasets, which is promising in utilizing large-scale datasets, but still suffers from the unstable estimation for out-of-distribution data. Recent developments in RL via supervised learning methods offer an alternative to learning effective policies from suboptimal datasets while relying on oracle information from the environment. In this article, we present an offline RL algorithm that combines hindsight relabeling and supervised regression to predict actions without oracle information. We use hindsight relabeling on the original dataset and learn a command generator and command-conditional policies in a supervised manner, where the command represents the desired return or goal location according to the corresponding task. Theoretically, we illustrate that our method optimizes the lower bound of the goal-conditional RL objective. Empirically, our method achieves competitive performance in comparison with existing approaches in the sparse reward setting and favorable performance in continuous control tasks."

# Summary. An optional shortened abstract.
summary: We present an offline RL algorithm that combines hindsight relabeling and supervised regression to predict actions without oracle information.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://ieeexplore.ieee.org/document/10221854
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

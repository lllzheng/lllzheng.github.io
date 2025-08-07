---
title: "How Does Goal Relabeling Improve Sample Efficiency?"
authors:
- Sirui Zheng
- Chenjia Bai
- Zhuoran Yang
- Zhaoran Wang
author_notes:
date: "2024-04-01T00:00:00Z"
doi: ""

weight: 27

# Schedule page publish date (NOT publication's date).
publishDate: "2024-04-01T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: In *International Conference on Machine Learning (**ICML**)*, 2024
publication_short: ""

abstract: "Hindsight experience replay and goal relabeling are successful in reinforcement learning (RL) since they enable agents to learn from failures. Despite their successes, we lack a theoretical understanding, such as (i) why hindsight experience replay improves sample efficiency and (ii) how to design a relabeling method that achieves sample efficiency. To this end, we construct an example to show the information-theoretical improvement in sample efficiency achieved by goal relabeling. Our example reveals that goal relabeling can enhance sample efficiency and exploit the rich information in observations through better hypothesis elimination. Based on these insights, we develop an RL algorithm called GOALIVE. To analyze the sample complexity of GOALIVE, we introduce a complexity measure, the goalconditioned Bellman-Eluder (GOAL-BE) dimension, which characterizes the sample complexity of goal-conditioned RL problems. Compared to the Bellman-Eluder dimension, the goal-conditioned version offers an exponential improvement in the best case. To the best of our knowledge, our work provides the first characterization of the theoretical improvement in sample efficiency achieved by goal relabeling."
  
# Summary. An optional shortened abstract.

summary: We construct an example to show the information-theoretical improvement in sample efficiency achieved by goal relabeling and develop an RL algorithm called _GOALIVE_.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://openreview.net/forum?id=99UFZV2VpU
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

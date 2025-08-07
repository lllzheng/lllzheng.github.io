---
title: "SAM-E: Leveraging Visual Foundation Model with Sequence Imitation for Embodied Manipulation."
authors:
- Junjie Zhang
- Chenjia Bai*
- Haoran He
- Zhigang Wang
- Bin Zhao
- Xiu Li
- Xuelong Li
author_notes:
date: "2024-05-10T00:00:00Z"
doi: ""

weight: 28

# Schedule page publish date (NOT publication's date).
publishDate: "2024-05-10T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: In *International Conference on Machine Learning (**ICML**)*, 2024
publication_short: ""

abstract: Acquiring a multi-task imitation policy in 3D manipulation poses challenges in terms of scene understanding and action prediction. Current methods employ both 3D representation and multi-view 2D representation to predict the poses of the robot’s end-effector. However, they still require a considerable amount of high-quality robot trajectories, and suffer from limited generalization in unseen tasks and inefficient execution in long-horizon reasoning. In this paper, we propose SAM-E, a novel architecture for robot manipulation by leveraging a vision-foundation model for generalizable scene understanding and sequence imitation for long-term action reasoning. Specifically, we adopt Segment Anything (SAM) pre-trained on a huge number of images and promptable masks as the foundation model for extracting task-relevant features, and employ parameter-efficient fine-tuning on robot data for a better understanding of embodied scenarios. To address long-horizon reasoning, we develop a novel multi-channel heatmap that enables the prediction of the action sequence in a single pass, notably enhancing execution efficiency. Experimental results from various instruction-following tasks demonstrate that SAM-E achieves superior performance with higher execution efficiency compared to the baselines, and also significantly improves generalization in few-shot adaptation to new tasks.  

# Summary. An optional shortened abstract.

summary: We propose SAM-E, a novel architecture for robot manipulation by leveraging a vision-foundation model for generalizable scene understanding and sequence imitation for long-term action reasoning.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://sam-embodied.github.io/static/SAM-E.pdf
url_code: https://github.com/pipixiaqishi1/SAM-E
url_dataset: ''
url_poster: ''
url_project: https://sam-embodied.github.io/
url_slides: ''
url_source: ''
url_video: ''
url_wechat: 'https://mp.weixin.qq.com/s/bLqyLHzFoBrRBT0jgkmZMw'

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

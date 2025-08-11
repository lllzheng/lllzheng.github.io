---
title: "A novel planner framework compatible with various end-effector constraints"
authors:
- Yahao Wang
- Yanghong Li
- Li Zheng 
- HaiYang He
- Sheng Chen
- Erbao Dong*
author_notes:
date: "2024-08-29T00:00:00Z"
doi: "https://doi.org/10.1108/RIA-02-2024-0043"

weight: 38

# Schedule page publish date (NOT publication's date).
publishDate: "2024-08-29T00:00:00Z"

# Publication type.
publication_types: ["Journal"]

# Publication name and optional abbreviated publication name.
publication: "Robotic Intelligence and Automation"
publication_short: ""

abstract: "Purpose – Aiming at the problem of insufficient adaptability of robot motion planners under the diversity of end-effector constraints, this
paper proposes Transformation Cross-sampling Framework (TC-Framework) that enables the planner to adapt to different end-effector
constraints.
Design/methodology/approach – This work presents a standard constraint methodology for representing end-effector constraints as a collection
of constraint primitives. The constraint primitives are merged sequentially into the planner, and a unified constraint input interface and constraint
module are added to the standard sampling-based planner framework. This approach enables the realization of a generic planner framework that
avoids the need to build separate planners for different end-effector constraints.
Findings – Simulation tests have demonstrated that the planner based on TC-framework can adapt to various end-effector constraints. Physical
experiments have also confirmed that the framework can be used in real robotic systems to perform autonomous operational tasks. The framework’s
strong compatibility with constraints allows for generalization to other tasks without modifying the scheduler, significantly reducing the difficulty of
robot deployment in task-diverse scenarios.
Originality/value – This paper proposes a unified constraint method based on constraint primitives to enhance the sampling-based planner. The
planner can now adapt to different end effector constraints by opening up the input interface for constraints. A series of simulation tests were
conducted to evaluate the TC-Framework-based planner, which demonstrated its ability to adapt to various end-effector constraints. Tests on a
physical experimental system show that the framework allows the robot to perform various operational tasks without requiring modifications to the
planner. This enhances the value of robots for applications in fields with diverse tasks."

# Summary. An optional shortened abstract.
summary: "This paper presents the Transformation Cross-sampling Framework (TC-Framework), a novel planner framework that enhances the adaptability of robot motion planners to various end-effector constraints."
tags: []

featured: true

# links:
# - name: ""
#   url: ""
url_pdf: './ria-02-2024-0043.pdf'
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

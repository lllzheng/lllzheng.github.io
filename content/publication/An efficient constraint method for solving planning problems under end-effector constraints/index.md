---
title: "An efficient constraint method for solving planning problems under end-effector constraints"
authors:
- Yahao Wang
- Yanghong Li
- Li Zheng 
- HaiYang He
- Sheng Chen
- Erbao Dong*
author_notes:
date: "2024-05-09T00:00:00Z"
doi: "https://doi.org/10.1108/IR-10-2023-0251"

weight: 37

# Schedule page publish date (NOT publication's date).
publishDate: "2024-05-09T00:00:00Z"

# Publication type.
publication_types: ["Journal"]

# Publication name and optional abbreviated publication name.
publication: "Industrial Robot"
publication_short: ""

abstract: "Purpose – In response to the challenge of reduced efficiency or failure of robot motion planning algorithms when faced with
end-effector constraints, this study aims to propose a new constraint method to improve the performance of the sampling-based
planner.
Design/methodology/approach – In this work, a constraint method (TC method) based on the idea of cross-sampling is proposed. This
method uses the tangent space in the workspace to approximate the constrained manifold pattern and projects the entire
sampling process into the workspace for constraint correction. This method avoids the need for extensive computational work
involving multiple iterations of the Jacobi inverse matrix in the configuration space and retains the sampling properties of the
sampling-based algorithm.
Findings – Simulation results demonstrate that the performance of the planner when using the TC method under the end-effector constraint
surpasses that of other methods. Physical experiments further confirm that the TC-Planner does not cause excessive constraint errors that might lead
to task failure. Moreover, field tests conducted on robots underscore the effectiveness of the TC-Planner, and its excellent performance, thereby
advancing the autonomy of robots in power-line connection tasks.
Originality/value – This paper proposes a new constraint method combined with the rapid-exploring random trees algorithm to generate
collision-free trajectories that satisfy the constraints for a high-dimensional robotic system under end-effector constraints. In a series of
simulation and experimental tests, the planner using the TC method under end-effector constraints efficiently performs. Tests on a power
distribution live-line operation robot also show that the TC method can greatly aid the robot in completing operation tasks with end-effector
constraints. This helps robots to perform tasks with complex end-effector constraints such as grinding and welding more efficiently and
autonomously."

# Summary. An optional shortened abstract.
summary: "This paper presents the Transformation Cross-sampling Framework (TC-Framework), a novel planner framework that enhances the adaptability of robot motion planners to various end-effector constraints."
tags: []

featured: true

# links:
# - name: ""
#   url: ""
url_pdf: './ir-10-2023-0251.pdf'
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

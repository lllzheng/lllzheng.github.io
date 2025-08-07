---
title: "Skill Matters: Dynamic Skill Learning for Multi-Agent Cooperative Reinforcement Learning."
authors:
- Tong Li
- Chenjia Bai*
- Kang Xu
- Chen Chu
- Peican Zhu
- Zhen Wang*
author_notes:
date: "2024-03-28T00:00:00Z"
doi: ""

weight: 25

# Schedule page publish date (NOT publication's date).
publishDate: "2024-03-28T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: '*Neural Networks*, 2024'
publication_short: ""

abstract: In Multi-Agent Reinforcement Learning (MARL), acquiring suitable behaviors for distinct agents in different scenarios is crucial to enhance the collaborative efficacy and adaptability of multi-agent systems. Existing methods address this challenge through role-based and hierarchical-based paradigms, while they can excessively depend on extrinsic rewards and obtain unsatisfactory results, or lead to homogeneous behaviors with shared agent parameterization. In this paper, we propose a novel Dynamic Skill Learning (DSL) framework to enable more effective adaptation and collaboration in complex tasks. Specifically, DSL learns diverse skills without external rewards and then assigns skills to agents dynamically. DSL has two components:(\romannumeral 1) dynamic skill discovery, which fosters distinguishable and far-reaching skill learning by using Lipschitz constraints, and (\romannumeral 2) dynamic skill assignment, which leverages a policy controller to dynamically allocate the optimal skill combination for each agent based on their local observations. Empirical results demonstrate that DSL leads to better collaborative ability and significantly improves the performance on challenging benchmarks including StarCraft II and Google Research Football.
  
# Summary. An optional shortened abstract.
summary: We propose a novel Dynamic Skill Learning (DSL) framework to enable more effective adaptation and collaboration in complex tasks.
  
tags: []

featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4790564
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

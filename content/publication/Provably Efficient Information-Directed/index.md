---
title: "Provably Efficient Information-Directed Sampling Algorithms for Multi-Agent Reinforcement Learning."
authors:
- Qiaosheng Zhang
- Chenjia Bai
- Shuyu Hu
- Zhen Wang*
- Xuelong Li*
author_notes:
date: "2024-04-30T00:00:00Z"
doi: ""

weight: 36

# Schedule page publish date (NOT publication's date).
publishDate: "2024-04-30T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["under-review"]

# Publication name and optional abbreviated publication name.
publication: "In *Artificial Intelligence (under review)*"
publication_short: ""

abstract: This work designs and analyzes a novel set of algorithms for multi-agent reinforcement learning (MARL) based on the principle of information-directed sampling (IDS). These algorithms draw inspiration from foundational concepts in information theory, and are proven to be sample efficient in MARL settings such as two-player zero-sum Markov games (MGs) and multi-player general-sum MGs. For episodic two-player zero-sum MGs, we present three sample-efficient algorithms for learning Nash equilibrium. The basic algorithm, referred to as MAIDS, employs an asymmetric learning structure where the max-player first solves a minimax optimization problem based on the joint information ratio of the joint policy, and the min-player then minimizes the marginal information ratio with the max-player’s policy fixed. Theoretical analyses show that it achieves a Bayesian regret. To reduce the computational load of MAIDS, we develop an improved algorithm called Reg-MAIDS, which has the same Bayesian regret bound while enjoying less computational complexity. Moreover, by leveraging the flexibility of IDS principle in choosing the learning target, we propose two methods for constructing compressed environments based on rate-distortion theory, upon which we develop an algorithm Compressed-MAIDS wherein the learning target is a compressed environment. Finally, we extend Reg-MAIDS to multi-player general-sum MGs and prove that it can learn either the Nash equilibrium or coarse correlated equilibrium in a sample efficient manner.

# Summary. An optional shortened abstract.
summary: This work designs and analyzes a novel set of algorithms for multi-agent reinforcement learning (MARL) based on the principle of information-directed sampling (IDS).

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/abs/2404.19292
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

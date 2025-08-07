---
title: "Exponential Topology-enabled Scalable Communication in Multi-agent Reinforcement Learning."
authors:
- Xinran Li
- Xiaolu Wang
- Chenjia Bai
- Jun Zhang 

author_notes:
date: "2024-12-16T00:00:00Z"
doi: ""

weight: 41

# Schedule page publish date (NOT publication's date).
publishDate: "2024-12-07T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: In *International Conference on Learning Representations (**ICLR**)*, 2025
publication_short: ""

abstract: In cooperative multi-agent reinforcement learning (MARL), well-designed communication protocols can effectively facilitate consensus among agents, thereby enhancing task performance. Moreover, in large-scale multi-agent systems commonly found in real-world applications, effective communication plays an even more critical role due to the escalated challenge of partial observability compared to smaller-scale setups. In this work, we endeavor to develop a scalable communication protocol for MARL. Unlike previous methods that focus on selecting optimal pairwise communication links—a task that becomes increasingly complex as the number of agents grows—we adopt a global perspective on communication topology design. Specifically, we propose to utilize the exponential topology to enable rapid information dissemination among agents by leveraging its small-diameter and small-size properties. This approach leads to a scalable communication protocol, named ExpoComm. To fully unlock the potential of exponential graphs as communication topologies, we employ memory-based message processors and auxiliary tasks to ground messages, ensuring that they reflect global information and benefit decision-making. Extensive experiments on large-scale cooperative benchmarks, including MAgent and Infrastructure Management Planning, demonstrate the superior performance and robust zero-shot transferability of ExpoComm compared to existing communication strategies.

# Summary. An optional shortened abstract.
summary: We introduce ExpoComm, a scalable communication protocol that leverages exponential topologies for efficient information dissemination among many agents in large-scale multi-agent reinforcement learning.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://openreview.net/pdf?id=CL3U0GxFRD
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

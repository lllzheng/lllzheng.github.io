---
title: "Online Preference Alignment for Language Models via Count-based Exploration."
authors:
- Chenjia Bai
- Yang Zhang
- Shuang Qiu
- Qiaosheng Zhang
- Kang Xu
- Xuelong Li*

author_notes:
date: "2024-12-16T00:00:00Z"
doi: ""

weight: 43

# Schedule page publish date (NOT publication's date).
publishDate: "2024-12-07T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: In *International Conference on Learning Representations (**ICLR**)*, 2025 &nbsp;&nbsp;&nbsp; <mark>**Spotlight**</mark>

publication_short: ""

abstract: Reinforcement Learning from Human Feedback (RLHF) has shown great potential in fine-tuning Large Language Models (LLMs) to align with human preferences. Existing methods perform preference alignment from a fixed dataset, which can be limited in data coverage and the resulting reward model is hard to generalize in out-of-distribution responses. Thus, online RLHF is more desirable to empower the LLM to explore outside the support of the initial dataset by iteratively collecting the prompt-response pairs. In this paper, we study the fundamental problem in online RLHF, i.e., how to explore for LLM. We give a theoretical motivation in linear reward assumption to show that an optimistic reward with an upper confidence bound (UCB) term leads to a provably efficient RLHF policy. Then, we reformulate our objective to direct preference optimization with an exploration term, where the UCB-term can be converted to a count-based exploration bonus. We further propose a practical algorithm, named Count-based Online Preference Optimization (COPO), which leverages a simple coin-flip counting module to estimate the pseudo-count of a prompt-response pair in previously collected data. COPO encourages LLMs to balance exploration and preference optimization in an iterative manner, which enlarges the exploration space and the entire data coverage of iterative LLM policies. We conduct online RLHF experiments on Zephyr and Llama-3 models. The results on instruction-following and standard academic benchmarks show that COPO significantly increases performance.

# Summary. An optional shortened abstract.
summary: We propose count-based online preference optimization for LLM alignment that leverages coin-flip counting to encourage exploration in online RLHF.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://openreview.net/pdf?id=cfKZ5VrhXt
url_code: 'https://github.com/Baichenjia/COPO'
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: ''
url_wechat: 'https://mp.weixin.qq.com/s/PL6euBwUES-OluwfVQLg7Q'

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

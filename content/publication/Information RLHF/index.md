---
title: "Information-Theoretic Reward Decomposition for Generalizable RLHF."
authors:
- Liyuan Mao
- Haoran Xu 
- Amy Zhang
- Weinan Zhang*
- Chenjia Bai*

author_notes:
date: "2023-03-09T00:00:00Z"
doi: ""
draft: false

weight: 50

# Schedule page publish date (NOT publication's date).
publishDate: "2023-03-09T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["under-review"]

# Publication name and optional abbreviated publication name.
publication: "under review"
publication_short: ""

abstract: A generalizable reward model is crucial in Reinforcement Learning from Human Feedback (RLHF) as it enables correctly evaluating unseen prompt-response pairs. However, existing reward models lack this ability, as they are typically trained by increasing the reward gap between chosen and rejected responses, while overlooking the prompts that the responses are conditioned on. Consequently, when the trained reward model is evaluated on prompt-response pairs that lie outside the data distribution, neglecting the effect of prompts may result in poor generalization of the reward model. To address this issue, we decompose the reward value into two independent components:prompt-free reward and prompt-related reward. Prompt-free reward represents the evaluation that is determined only by responses, while the prompt-related reward reflects the reward that derives from both the prompt and the response. We extract these two components from an information-theoretic perspective, which requires no extra models. Subsequently, we propose a new reward learning algorithm by prioritizing data samples based on their prompt-free reward values. Through toy examples, we demonstrate that the extracted prompt-free and prompt-related rewards effectively characterize two parts of the reward model. Further, standard evaluations show that our method improves both the alignment performance and the generalization capability of the reward model.

# Summary. An optional shortened abstract.
summary:  We decompose the reward value in RLHF into two independent components that consists prompt-free reward and prompt-related reward, and propose a new reward learning algorithm by prioritizing data samples based on their prompt-free reward values.

tags: []
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/abs/2504.06020
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

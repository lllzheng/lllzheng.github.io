---
title: "Obtaining Accurate Estimated Action Values in Categorical Distributional Reinforcement Learning."
authors:
- Yingnan Zhao
- Peng Liu
- Chenjia Bai
- Wei Zhao
- Xianglong Tang
author_notes:
date: "2020-03-06T00:00:00Z"
doi: ""

weight: 2

# Schedule page publish date (NOT publication's date).
publishDate: "2020-03-06T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "*Knowledge-Based Systems (KBS)*, 2020"
publication_short: ""

abstract: "Categorical Distributional Reinforcement Learning (CDRL) uses a categorical distribution with evenly spaced outcomes to model the entire distribution of returns and produces state-of-the-art empirical performance. However, using inappropriate bounds with CDRL may generate inaccurate estimated action values, which affect the policy update step and the final performance. In CDRL, the bounds of the distribution indicate the range of the action values that the agent can obtain in one task, without considering the policy’s performance and state–action pairs. The action values that the agent obtains are often far from the bounds, and this reduces the accuracy of the estimated action values. This paper describes a method of obtaining more accurate estimated action values for CDRL using adaptive bounds. This approach enables the bounds of the distribution to be adjusted automatically based on the policy and state–action pairs. To achieve this, we save the weights of the critic network over a fixed number of time steps, and then apply a bootstrapping method. In this way, we can obtain confidence intervals for the upper and lower bound, and then use the upper and lower bound of these intervals as the new bounds of the distribution. The new bounds are more appropriate for the agent and provide a more accurate estimated action value. To further correct the estimated action values, a distributional target policy is proposed as a smoothing method. Experiments show that our method outperforms many state-of-the-art methods on the OpenAI gym tasks."

# Summary. An optional shortened abstract.
summary: This paper describes a method of obtaining more accurate estimated action values for CDRL using adaptive bounds.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://doi.org/10.1016/j.knosys.2020.105511
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

---
title: "Active Sampling for Deep Q-learning Based on TD-error Adaptive Correction."
authors:
- Chenjia Bai
- Peng Liu
- Wei Zhao
- Xianglong Tang
author_notes:
date: "2019-03-10T00:00:00Z"
doi: ""

weight: 1

# Schedule page publish date (NOT publication's date).
publishDate: "2019-03-10T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "*Journal of Computer Research and Development (in Chinese)*, 2019"
publication_short: ""

abstract: "Deep reinforcement learning (DRL) is one of research hotspots in artificial intelligence. Deep Q-learning is one of the representative achievements of DRL. In some fields, its performance has met or exceeded the level of human expert. It is necessary for training deep Q-learning to acquire lots of samples. These samples are obtained by the interaction between agent and environment. However, it is usually computationally intensive and sometimes impossible to keep away from interaction risk. We propose an active sampling method based on TD-error adaptive correction in order to solve sample efficiency problem in deep Q-learning. In various deep Q-learning methods, the updating of storage priority in experience memory lags behind the updating of Q-network parameters. It causes that a lot of samples are not selected to apply in Q-network training because the storage priority cannot reflect the true distribution of TD-error in experience memory. The TD-error adaptive correction active sampling method proposed in this paper uses the replay periods of samples and Q-network state to establish a priority bias model to estimate the real priority of each sample in experience memory during the Q-network iteration. The samples are selected from experience memory according to the corrected priority and the bias model parameters are adaptively updated by a segmented form. We analyze the complexity of the algorithm and the relationship between learning performance and the order of polynomial feature and updating period of model parameters. Our method is verified on the platform of Atari 2600. The experimental results show that proposed method improves the learning speed and reduces the number of interaction between agent and environment. Meanwhile, it ameliorates the quality of optimal policy."

# Summary. An optional shortened abstract.
summary: We propose an active sampling method based on TD-error adaptive correction in order to solve sample efficiency problem in deep Q-learning.

tags: []
  
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://crad.ict.ac.cn/EN/10.7544/issn1000-1239.2019.20170812
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

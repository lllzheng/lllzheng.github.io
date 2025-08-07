---
title: "Adversarial Locomotion and Motion Imitation for Humanoid Policy Learning"
authors:
- Jiyuan Shi
- Xinzhe Liu
- Dewei Wang
- Ouyang Lu
- Sören Schwertfeger
- Fuchun Sun
- Chenjia Bai*
- Xuelong Li*

author_notes:
date: "2023-03-09T00:00:00Z"
doi: ""
draft: false

weight: 51

# Schedule page publish date (NOT publication's date).
publishDate: "2023-03-09T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["under-review"]

# Publication name and optional abbreviated publication name.
publication: "under review"
publication_short: ""

abstract: Humans exhibit diverse and expressive whole-body movements. However, attaining human-like whole-body coordination in humanoid robots remains challenging, as conventional approaches that mimic whole-body motions often neglect the distinct roles of upper and lower body. This oversight leads to computationally intensive policy learning and frequently causes robot instability and falls during real-world execution. To address these issues, we propose Adversarial Locomotion and Motion Imitation (ALMI), a novel framework that enables adversarial policy learning between upper and lower body. Specifically, the lower body aims to provide robust locomotion capabilities to follow velocity commands while the upper body tracks various motions. Conversely, the upper-body policy ensures effective motion tracking when the robot executes velocity-based movements. Through iterative updates, these policies achieve coordinated whole-body control, which can be extended to loco-manipulation tasks with teleoperation systems. Extensive experiments demonstrate that our method achieves robust locomotion and precise motion tracking in both simulation and on the full-size Unitree H1 robot. Additionally, we release a large-scale whole-body motion control dataset featuring high-quality episodic trajectories from MuJoCo simulations deployable on real robots. The project page is this https URL.

# Summary. An optional shortened abstract.
summary:  We propose Adversarial Locomotion and Motion Imitation (ALMI) for humanoid robots, which serves as a novel framework for loco-manipulation tasks, enabling adversarial policy learning between upper and lower body.

tags: []
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/abs/2504.14305
url_code: ''
url_dataset: ''
url_poster: ''
url_project: https://almi-humanoid.github.io/
url_slides: ''
url_source: ''
url_video: ''
url_wechat: https://mp.weixin.qq.com/s/CKjPzQs0ZnVx_mE8YtMwIg

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

---
title: "Towards a Generalizable Bimanual Foundation Policy via Flow-based Video Prediction"
authors:
- Chenyou Fan
- Fangzheng Yan
- Chenjia Bai*
- Jiepeng Wang
- Chi Zhang
- Zhen Wang
- Xuelong Li*

author_notes:
date: "2023-03-09T00:00:00Z"
doi: ""
draft: false

weight: 54

# Schedule page publish date (NOT publication's date).
publishDate: "2023-03-09T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["under-review"]

# Publication name and optional abbreviated publication name.
publication: "under review"
publication_short: ""

abstract: Learning a generalizable bimanual manipulation policy is extremely challenging for embodied agents due to the large action space and the need for coordinated arm movements. Existing approaches rely on Vision-Language-Action (VLA) models to acquire bimanual policies. However, transferring knowledge from single-arm datasets or pre-trained VLA models often fails to generalize effectively, primarily due to the scarcity of bimanual data and the fundamental differences between single-arm and bimanual manipulation. In this paper, we propose a novel bimanual foundation policy by fine-tuning the leading text-to-video models to predict robot trajectories and training a lightweight diffusion policy for action generation. Given the lack of embodied knowledge in text-to-video models, we introduce a two-stage paradigm that fine-tunes independent text-to-flow and flow-to-video models derived from a pre-trained text-to-video model. Specifically, optical flow serves as an intermediate variable, providing a concise representation of subtle movements between images. The text-to-flow model predicts optical flow to concretize the intent of language instructions, and the flow-to-video model leverages this flow for fine-grained video prediction. Our method mitigates the ambiguity of language in single-stage text-to-video prediction and significantly reduces the robot-data requirement by avoiding direct use of low-level actions. In experiments, we collect high-quality manipulation data for real dual-arm robot, and the results of simulation and real-world experiments demonstrate the effectiveness of our method.


# Summary. An optional shortened abstract.
summary: We propose a novel bimanual foundation policy that leverages text-to-video models to predict robot trajectories and uses optical flow as an intermediate variable to improve generalization.

tags: []
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/abs/2505.24156
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

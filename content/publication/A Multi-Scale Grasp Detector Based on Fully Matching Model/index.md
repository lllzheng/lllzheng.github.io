---
title: "A Multi-Scale Grasp Detector Based on Fully Matching Model"
authors:
- Xinheng Yuan
- Hao Yu
- Houlin Zhang
- Li Zheng
- Erbao Dong
- Heng'an Wu*
author_notes:
date: "2022-11-01T00:00:00Z"
doi: "https://www.techscience.com/CMES/v133n2/48964"

weight: 36

# Schedule page publish date (NOT publication's date).
publishDate: "2022-11-01T00:00:00Z"

# Publication type.
publication_types: ["Journal"]

# Publication name and optional abbreviated publication name.
publication: "Computer Modeling in Engineering & Sciences"
publication_short: ""

abstract: "Robotic grasping is an essential problem at both the household and industrial levels, and unstructured objects have always been difficult for grippers. Parallel-plate grippers and algorithms, focusing on partial information of objects, are one of the widely used approaches. However, most works predict single-size grasp rectangles for fixed cameras and gripper sizes. In this paper, a multi-scale grasp detector is proposed to predict grasp rectangles with different sizes on RGB-D or RGB images in real-time for hand-eye cameras and various parallel-plate grippers. The detector extracts feature maps of multiple scales and conducts predictions on each scale independently. To guarantee independence between scales and efficiency, fully matching model and background classifier are applied in the network. Based on analysis of the Cornell Grasp Dataset, the fully matching model can match all labeled grasp rectangles. Furthermore, background classification, along with angle classification and box regression, functions as hard negative mining and background predictor. The detector is trained and tested on the augmented dataset, which includes images of 320× 320 pixels and grasp rectangles ranging from 20 to more than 320 pixels. It performs up to 98.87% accuracy on image-wise dataset and 97.83% on object-wise split dataset at a speed of more than 22 frames per second. In addition, the detector, which is trained on a single-object dataset, can predict grasps on multiple objects."

# Summary. An optional shortened abstract.
summary: "This paper presents a multi-scale grasp detector that predicts grasp rectangles of varying sizes in real-time for hand-eye cameras and parallel-plate grippers."
tags: []

featured: true

# links:
# - name: ""
#   url: ""
url_pdf: './A-Multi-Scale-Grasp-Detector-Based-on-Fully-Matching-Model.pdf'
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

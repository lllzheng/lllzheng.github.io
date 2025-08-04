---
# Leave the homepage title empty to use the site title
title: ""
date: 2022-10-24
type: landing

design:
  # Default section spacing
  spacing: "6rem"

sections:
# Biography
  - block: resume-biography-3
    content:
      # 使用 `content/authors/admin/` 下的作者信息
      username: admin
      text: ""      # 简介文字（为空则读取作者资料）
      button:
        text: Download CV
        url: uploads/郑立个人简历.pdf
    design:
      css_class: dark
      background:
        color: black
        image:
          # Add your image background to `assets/media/`.
          filename: stacked-peaks.svg
          filters:
            brightness: 0.5
          size: cover
          position: center
          parallax: false
# Recent Publications
  - block: collection
    content:
      title: Recent Publications
      text: ""
      filters:
        folders:
          - publication
        exclude_featured: false
    design:
      view: citation
# Skills
  - block: collection
    content:
      title: Skills
      text: ""
    design:
      view: citation
# Experience
  - block: experience
    id: experience
    content:
      title: Experience
      date_format: Jan 2006
      items:
        - title: Researcher
          company: Noah's Ark Lab, Huawei
          company_url: ''
          company_logo: ''
          location: China
          date_start: '2025-06-30'
          date_end: ''
        - title: PhD Student
          company: University of Science and Technology of China(USTC)
          company_url: 'https://www.ustc.edu.cn/'
          company_logo: 'images/ustcblue.jpg'
          location: China
          date_start: '2020-09-01'
          date_end: '2025-06-20'
    design:
      columns: '2'
#   - block: collection
#     id: talks
#     content:
#       title: Recent & Upcoming Talks
#       filters:
#         folders:
#           - event
#     design:
#       view: article-grid
#       columns: 1
---

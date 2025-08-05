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
      username: admin
      text: ""      # 简介文字（为空则读取作者资料）
      button:
        text: Download CV
        url: uploads/郑立个人简历.pdf
    design:
      css_class: white
      spacing:
        padding: "1rem"
    #   background:
    #     color: black
    #     image:
    #       filename: stacked-peaks.svg
    #       filters:
    #         brightness: 0.2
    #       size: cover
    #       position: center
    #       parallax: false
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
  - block: skills
    id: skills
    content:
      title: Skills
      text: ""
      items: []  
    design:
      card:
        columns: '3'  # 列数布局
        view: card    # 显示视图
        spacing: "6rem"  # 间距设置
  # Experience：work and education
  - block: experience
    id: experience
    content:
      title: Experience
      date_format: Jan 2006
      items: []  
    design:
      columns: '4'
      view: card
      spacing:
        padding: "1rem"
    # Awards
  - block: collection
    id: awards
    content:
        title: Awards
        items: []  
    design:
        view: list
        spacing: "2rem"
---

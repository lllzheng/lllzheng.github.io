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
        color: white
        image:
          # Add your image background to `assets/media/`.
          filename: stacked-peaks.svg
          filters:
            brightness: 0.2
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
      items: {{ .Site.GetPage "authors/admin".Params.skills }}
    design:
      card:
        columns: '3'  # 列数布局
        view: card    # 显示视图
        spacing: "6rem"  # 间距设置
  # Experience
  - block: experience
    id: experience
    content:
      title: Experience
      date_format: Jan 2006
      items: {{ .Site.GetPage "authors/admin".Params.work }}
    design:
      columns: '4'
---

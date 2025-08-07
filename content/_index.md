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
    # design:
    #   css_class: white
    #   background:
    #     color: black
    #     image:
    #       filename: stacked-peaks.svg
    #       filters:
    #         brightness: 0.2
    #       size: cover
    #       position: center
    #       parallax: false
  # Publications
  - block: collection
    content:
      title: Publications
      text: |-
        <div text-align=center><font size=3px>"✉" denotes corresponding author</font></div>
        {{% callout note %}}
        <font size=3px>Quickly discover relevant content by [filtering publications](./publication/).</font>
        {{% /callout %}}
      filters:
        folders:
          - publication
        exclude_featured: false
      count: 0
      sort_by: 'weight'
      sort_ascending: false
      design:
        columns: '1'
        view: compact
  - block: markdown
    id: talks
    content:
      title: Talks
      text: |
        - <font size=4rem>机器人与仿生学国际会议: [自主导航与操作论坛](http://www.robio2023.org/). IEEE International Conference on Robotics and Biomimetics 2023.</font>
      design:
        columns: '2'
  # Skills
  - block: skills
    id: skills
    content:
      title: Skills
      text: ""
      items:
        - name: Technical Skills
          items:
            - name: Python
              description: ''
              percent: 80
              icon: code-bracket
            - name: Data Science
              description: ''
              percent: 100
              icon: chart-bar
            - name: SQL
              description: ''
              percent: 40
              icon: circle-stack
        - name: Hobbies
          color: '#eeac02'
          color_border: '#f0bf23'
          items:
            - name: Hiking
              description: ''
              percent: 60
              icon: person-simple-walk
            - name: Cats
              description: ''
              percent: 100
              icon: cat
            - name: Photography
              description: ''
              percent: 80
              icon: camera 
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
      items:
        - title: Researcher
          company: Huawei Noah's Ark Lab
          company_url: ''
          company_logo: ''
          location: China
          date_start: '2025-06-30'
          date_end: ''
        - title: Research Intern
          company: Tencent Robotics X Lab
          company_url: ''
          company_logo: ''
          location: China
          date_start: '2024-03-01'
          date_end: '2024-06-20'
        - title: PhD Student
          company: University of Science and Technology of China
          company_url: ''
          company_logo: ''
          location: China
          date_start: '2020-09-01'
          date_end: '2025-06-20' 
        - title: BSc Student
          company: Dalian University of Technology
          company_url: ''
          company_logo: ''
          location: China
          date_start: '2016-09-01'
          date_end: '2020-06-30' 
    design:
      columns: '2'
---

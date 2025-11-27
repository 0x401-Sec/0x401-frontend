# 0x401 Team 官方网站

## 项目描述

这是0x401 CTF战队的官方网站，用于展示团队信息、成员介绍、获奖记录以及招募新成员等内容。网站采用现代化的前端技术构建，具有响应式设计和动态效果。

## 技术栈

- **前端框架**: HTML5, CSS3, JavaScript
- **UI框架**: Semantic UI, Element UI
- **JavaScript库**: Vue.js, jQuery
- **特效**: 粒子背景效果 (jquery.particleground.js)

## 网站结构

- `index.html`: 首页，包含团队介绍、获奖记录、成员列表
- `join.html`: 加入团队页面，包含招募信息和联系方式
- `rules.html`: 战队规章页面，包含团队规则和管理规定
- `static/`: 静态资源目录
  - `css/`: 样式文件
  - `js/`: JavaScript文件
  - `images/`: 图片资源（团队logo、成员头像、比赛证书等）
  - `fonts/`: 字体文件
  - `media/`: 媒体文件

## 本地运行

1. 克隆或下载项目到本地
2. 直接在浏览器中打开 `index.html` 文件
3. 或者使用本地服务器运行（推荐）：
   ```bash
   # 使用Python的简单HTTP服务器
   python -m http.server 8000
   
   # 或者使用Node.js的http-server
   npx http-server
   ```
4. 在浏览器中访问 `http://localhost:8000`

## 部署

网站部署在GitHub Pages上，域名：molun.me

如需重新部署：
1. 推送代码到GitHub仓库
2. 确保GitHub Pages设置正确指向主分支
3. CNAME文件已配置为 `molun.me`

## 团队信息

- **团队名称**: 0x401 Team
- **成立时间**: 2018年
- **所属学校**: 四川大学
- **联系方式**: team0x401@163.com
- **团队特色**: 专注于CTF竞赛，涵盖Pwn、Web、Crypto、Misc、Re等方向

## 贡献

欢迎对网站进行改进和维护。如有建议或发现问题，请通过以下方式联系：

- 发送邮件至: team0x401@163.com
- 或在GitHub上提交Issue/PR

## 许可证

本项目仅供学习和展示使用，未经许可不得用于商业用途。

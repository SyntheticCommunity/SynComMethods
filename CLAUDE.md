# SynComMethods — 《合成菌群研究方法》

合成菌群（Synthetic Community, SynCom）研究方法的教材/参考书，涵盖湿实验与干实验。
使用 Quarto 构建，结合 R、Python 和 LaTeX（XeLaTeX + ctex 中文支持）。

## 构建命令

- `make book` — 渲染 HTML 书籍
- `make deploy` — 部署
- `make clean` — 清理 `_book/`
- `quarto preview` — 实时预览

## 项目结构

- 根目录 `.qmd` 文件为各章节（中文撰写）
- `_quarto.yml` — 书籍配置（主题 cosmo，PDF 使用 XeLaTeX）
- `references.bib` — 参考文献
- `extdata/`, `model/` — 数据与模型文件
- `example/` — 独立示例
- `images/` — 图片资源
- `learn-fba/` — Git 子模块（FBA 学习材料）

## 书籍章节

| 部分 | 内容 |
|------|------|
| 科学写作 | 数学公式、化学方程式、Quarto 技术写作 |
| 微生物培养 | 菌株与组合、培养方法 |
| 代谢网络 | 代谢模型、FBA、MICOM |
| 生态模型 | 生态模型、GLV 模型 |
| 引物设计 | 菌株特异性 PCR、引物设计工具 |
| 数学基础 | 统计、数学优化 |
| 组学分析 | 代谢组分析 |

## 环境管理（关键）

**必须使用环境管理工具确保可重复性：**

- **R 依赖**：使用 `renv` 管理。运行 `renv::snapshot()` 保存，`renv::restore()` 恢复
- **Python 依赖**：使用 `uv` 管理（通过 Conda 环境 `SynComMethods`）
- **命令行工具**：使用 Conda 管理
- R 项目配置（`.Rproj`）中已指定 Conda 环境和 XeLaTeX 引擎

## 写作规范

- Code cell 使用 `#| echo: false` 隐藏代码，`#| warning: false` 隐藏警告
- R 代码使用 tidyverse 风格
- Python 代码遵循 PEP 8
- 数学公式：HTML 用 MathJax，PDF 用原生 LaTeX
- 化学方程式：`\ce{}`（mhchem 宏包）
- 引用：`[@key]` 格式，来源 `references.bib`
- 交叉引用：`@fig-`、`@tbl-`、`@eq-` 前缀
- 图片宽高比默认 `fig-asp: 0.618`（黄金比例）

## 重要文件

- `_quarto.yml` — 书籍结构与格式配置
- `Makefile` — 构建自动化
- `SynComMethods.Rproj` — R 项目配置
- `references.bib` — 参考文献库

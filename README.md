# 博客同步工具（科技博主必备！）

按我自己日常写文章的流程，写了个小工具，帮我快速在多个平台发布文章。

飞书文档 → Markdown → GitHub 多平台发布

## 📚 我的博客发布记录

| 文章 |   知乎**   | 微信公众号 | AWS博客 | 其他 | 发布日期 |
|------|------|------------|---------|------|----------|
| [普通人如何快速入门 AI Agent？一篇讲清楚背景现状与工程原理](posts/普通人如何快速入门AI-Age/index.md) | [链接](https://zhuanlan.zhihu.com/p/1999470851620368653) | - | - | - | 2026-01-27 |
| [不只是 Chatbot：如何设计一个真正可执行的 Agentic Commerce 电商系统](posts/Agentic-Commerce电商系统/index.md) | - | - | [链接](https://aws.amazon.com/cn/blogs/china/beyond-chatbot-how-to-design-a-truly-executable-agentic-commerce-ecommerce-system/) | - | 2026-01-14 |
| [在Apache DataHub中整合Amazon Glue任务的数据血缘](https://aws.amazon.com/cn/blogs/china/integrate-amazon-glue-job-data-lineage-in-apache-datahub/) | - | - | [链接](https://aws.amazon.com/cn/blogs/china/integrate-amazon-glue-job-data-lineage-in-apache-datahub/) | - | 2025-11-07 |
| [【Agentic AI for Data 系列】Kiro 实战：DuckDB vs Spark 技术选型全流程](posts/Kiro实战-DuckDB-vs-Spark/index.md) | - | - | [链接](https://aws.amazon.com/cn/blogs/china/duckdb-vs-spark-technology-selection-process/) | - | 2025-10-31 |
| [Agentic AI for Data 系列】开发新范式：AI 驱动的数据革命（先导篇）](posts/Agentic-AI-for-Data/index.md) | - | - | [链接](https://aws.amazon.com/cn/blogs/china/ai-driven-data-revolution-pilot-chapter/) | - | 2025-10-31 |


---

## 快速开始

### 1. 安装 feishu2md

```bash
brew install feishu2md
```

### 2. 配置飞书应用

```bash
feishu2md config --appId <your_app_id> --appSecret <your_app_secret>
```

### 3. 同步文档

```bash
# 单篇文章（自动用标题命名文件夹）
./scripts/sync.sh https://xxx.feishu.cn/docx/xxxxx

# 批量同步文件夹
feishu2md dl --batch https://xxx.feishu.cn/drive/folder/xxxxx -o posts/

# 同步知识库
feishu2md dl --wiki https://xxx.feishu.cn/wiki/settings/xxxxx -o posts/
```

## 目录结构

```
├── posts/
│   └── 文章标题前15字/
│       ├── index.md      # 文章内容
│       └── *.png         # 文章图片
├── scripts/
│   └── sync.sh           # 同步脚本
└── README.md
```

## 飞书应用配置

1. 访问 [飞书开放平台](https://open.feishu.cn/app)
2. 创建企业自建应用
3. 添加权限: `docs:doc:readonly`, `drive:drive:readonly`
4. 发布应用并获取 App ID / App Secret （一定要发布哦，不然无法生效！！！）
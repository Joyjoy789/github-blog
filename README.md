# 博客同步工具（科技博主必备！）

按我自己日常写文章的流程，写了个小工具，帮我快速在多个平台发布文章。

飞书文档 → Markdown → GitHub 多平台发布

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

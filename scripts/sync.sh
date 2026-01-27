#!/bin/bash
# 飞书文档同步脚本
# 用法: ./scripts/sync.sh <飞书文档链接>

set -e

if [ -z "$1" ]; then
    echo "用法: $0 <飞书文档链接>"
    echo "示例: $0 https://xxx.feishu.cn/docx/xxxxx"
    exit 1
fi

cd "$(dirname "$0")/.."

# 下载到临时目录
TEMP_DIR=$(mktemp -d)
feishu2md dl "$1" -o "$TEMP_DIR/"

# 找到下载的 md 文件
MD_FILE=$(find "$TEMP_DIR" -name "*.md" | head -1)

if [ -z "$MD_FILE" ]; then
    echo "❌ 未找到下载的 markdown 文件"
    rm -rf "$TEMP_DIR"
    exit 1
fi

# 提取标题（第一行 # 开头的内容，取前15个字符）
TITLE=$(head -1 "$MD_FILE" | sed 's/^# //' | cut -c1-15 | tr -d '[:punct:]' | tr ' ' '-')

if [ -z "$TITLE" ]; then
    TITLE="untitled-$(date +%Y%m%d)"
fi

# 创建文章目录
POST_DIR="posts/$TITLE"
mkdir -p "$POST_DIR"

# 移动文件
mv "$MD_FILE" "$POST_DIR/index.md"

# 移动图片（如果有）
find "$TEMP_DIR" -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.gif" \) -exec mv {} "$POST_DIR/" \;

# 清理临时目录
rm -rf "$TEMP_DIR"

echo "✅ 同步完成: $POST_DIR"

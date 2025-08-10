#!/bin/bash



# 创建保存目录

mkdir -p claude_code_versions

cd claude_code_versions



# 定义版本列表

versions=(

  '1.0.0'

  '1.0.6'

  '1.0.15'

  '1.0.22'

  '1.0.29'

  '1.0.36'

  '1.0.43'

  '1.0.50'

  '1.0.58'

  '1.0.64'

  '1.0.68'

  '1.0.71'

  '1.0.72'

)



# 循环下载每个版本

for version in "${versions[@]}"; do

  echo "📦 Downloading version $version..."

  npm pack "@anthropic-ai/claude-code@$version"

done



echo "✅ All versions downloaded to $(pwd)"



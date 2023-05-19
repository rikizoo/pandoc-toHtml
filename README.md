## できること

Markdown ファイルを html に一括変換する

## 使用方法

1. src/markdown ディレクトリに.md ファイルを格納
2. `make pandoc`で 出力

## 環境

- Docker Desktop for Windows
- Docker Image
  - [pandoc/latex:3.0](https://hub.docker.com/r/pandoc/latex)

## 参考

- テンプレートファイル
  - https://github.com/cawpea/md2html-template-for-pandoc
  - https://gist.github.com/dashed/6714393/

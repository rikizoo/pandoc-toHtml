#!/bin/sh

srcdir="markdown"
outdir="html"
index_file=index.html
style_file="template/style.css"
template_file="template/template.html"

# Pandocが存在するか
if [ ! "`which pandoc 2>/dev/null`" ]; then
    echo "Error: Command 'pandoc' not found."
    exit 1
fi

# 入出力ディレクトリが存在するか
if [ ! -d "$srcdir" ]; then
    echo "Error: Input Directory '$srcdir' does not exist."
    exit 1
elif [ ! -d "$outdir" ]; then
    echo "Error: Output Directory '$outdir' does not exist."
    exit 1
fi

echo "start outputting html"
cat << EOT > $index_file
<!DOCTYPE html>
<html><head><meta charset="utf-8" />
<meta name="generator" content="pandoc v3.0" /><title>Documents</title>
<link rel="stylesheet" href="$style_file">
</head><body><h1>Documents</h1>
<p>pandoc v3.0によって`date "+%Y-%m-%d %H:%M:%S"`に生成</p>
<ul>
EOT

# mdファイルからhtmlへの変換処理
for input_file in `ls -t $srcdir/*.md` 
do
  file_name=`basename $input_file .md`
  html_name="$outdir/$file_name.html"
  /bin/echo -n "  変換: $file_name.md -> $file_name.html .."
  mtime=`date -r $input_file "+%Y-%m-%d %H:%M:%S"`
  pandoc -f markdown+east_asian_line_breaks -t html -s --metadata title=$file_name $input_file --toc --toc-depth=2 --template=$template_file -o $html_name
  echo ".... 完了"
  echo "<li><a href="./$html_name">$file_name</a><br />（最終更新日時：${mtime} </li>" >> $index_file
done

cat << EOT >> $index_file
</ul></body></html>
EOT
echo "complete output html"
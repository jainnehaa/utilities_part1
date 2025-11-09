#!/bin/bash
# merge_pdfs.sh — merge multiple PDFs into one
# Usage: ./merge_pdfs.sh output.pdf input1.pdf input2.pdf ...

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 output.pdf input1.pdf input2.pdf ..."
  exit 1
fi

output="$1"
shift

echo "Merging PDFs into $output ..."
pdfunite "$@" "$output"

if [ $? -eq 0 ]; then
  echo "✅ Successfully merged PDFs into $output"
else
  echo "❌ Failed to merge PDFs"
fi
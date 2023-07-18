python tools/preprocess_data2.py \
       --input data/wikipedia.new_format.jsonl.filtered.normalized.filtered.fused.filtered.deduped.lmd/data_0_time1687152691_default.jsonl.zst \
       --output-prefix my-gpt \
       --tokenizer-name-or-path KBLab/unigram-64k-pretok-small_data-tokenizer \
       --tokenizer-type PretrainedFromHF \
       --split-sentences \
       --workers 8 \
       --chunk-size 100 \
       --lang swedish \
#       --vocab-file KBLab/unigram-64k-pretok-small_data-tokenizer/vocab.json \
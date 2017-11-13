#!/bin/sh

mkdir output
build/vocab_count -min-count 16 < tmp/corpus.txt > tmp/corpus_vocab.glove
build/cooccur -memory 30 -vocab-file tmp/corpus_vocab.glove -window-size 10 < tmp/corpus.txt > tmp/corpus_cooccur.glove
build/shuffle -memory 30 < tmp/corpus_cooccur.glove > tmp/corpus_cooccur_shuffle.glove
build/glove -threads 8 -vector-size 128 -binary 2 -model 0 -write-header 1 -iter 1 -input-file tmp/corpus_cooccur_shuffle.glove -vocab-file tmp/corpus_vocab.glove -save-file output/baike.128.glove

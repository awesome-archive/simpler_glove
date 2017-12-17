## Simpler GloVe: A Simpler Model for Word Representation from Glove

以互信息为训练目标的词向量模型。

2017.12.16更新：提供多种模型组合

> 0:上下文向量和中心词向量共用一组词向量，这种词向量在语义捕捉方面效果会比较好；

> 1:上下文向量和中心词向量用不同的词向量，每个词的向量为两种向量的直接拼接，这种词向量会在语法任务上比较好；

> 2:上下文向量和中心词向量用不同的词向量，每个词的向量为两种向量的求和，这种词向量表现应该跟0类似。

Oringal glove model: https://github.com/stanfordnlp/GloVe

<a href="http://kexue.fm/archives/4667/" target="_blank">更别致的词向量模型(一)：simpler glove</a>

<a href="http://kexue.fm/archives/4669/" target="_blank">更别致的词向量模型(二)：对语言进行建模</a>

<a href="http://kexue.fm/archives/4671/" target="_blank">更别致的词向量模型(三)：描述相关的模型</a>

<a href="http://kexue.fm/archives/4675/" target="_blank">更别致的词向量模型(四)：模型的求解</a>

<a href="http://kexue.fm/archives/4677/" target="_blank">更别致的词向量模型(五)：有趣的结果</a>

<a href="http://kexue.fm/archives/4681/" target="_blank">更别致的词向量模型(六)：代码、分享与结语</a>

## Train word vectors on a new corpus

    $ git clone https://github.com/bojone/simpler_glove
    $ cd simpler_glove && make
    $ ./demo.sh


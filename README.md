## Simpler GloVe: A Simpler Model for Word Representation from Glove

原始版本：https://github.com/stanfordnlp/GloVe

Oringal glove model: https://github.com/stanfordnlp/GloVe

## Train word vectors on a new corpus


If the web datasets above don't match the semantics of your end use case, you can train word vectors on your own corpus.

    $ git clone http://github.com/stanfordnlp/glove
    $ cd glove && make
    $ ./run.sh

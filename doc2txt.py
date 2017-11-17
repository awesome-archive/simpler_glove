#! -*- coding:utf-8 -*-
# An example script to export corpus as the format glove need.

from tqdm import tqdm

import pymongo
db = pymongo.MongoClient().baike_lab.words2

class Document:
    def __iter__(self):
        for t in db.find(no_cursor_timeout=True).limit(500000):
            yield t['summary']
            yield t['content']

import codecs
import os

if not os.path.exists('tmp'):
    os.mkdir('tmp')

f = codecs.open('tmp/corpus.txt', 'wa', encoding='utf-8')
for d in tqdm(Document()):
    f.write(' '.join(d))
    f.write('\n')

f.close()

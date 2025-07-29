#!/bin/bash

# Run all Python scripts in parallel
#执行逻辑很简单，下载数据集到cache文件里
python3 - <<EOF
import os
from paths import SAVE_DIR, HF_CACHE_DIR, DATA_DIR; os.environ["HF_HOME"] = HF_CACHE_DIR
from datasets import load_dataset

dataset_splits = load_dataset("kimyuji/fineweb-test")
print("fineweb-edu-dedup completed successfully")
EOF

echo "Downloading fineweb-test completed!"
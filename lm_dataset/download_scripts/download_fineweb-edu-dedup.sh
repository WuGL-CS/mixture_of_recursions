#!/bin/bash

# Run all Python scripts in parallel

#执行的逻辑很简单：通过设置系统环境变量到挂载的目录，load_dataset will download the data and store to the directory that be predefined
python3 - <<EOF
import os
from paths import SAVE_DIR, HF_CACHE_DIR, DATA_DIR; os.environ["HF_HOME"] = HF_CACHE_DIR
from datasets import load_dataset
ds = load_dataset("HuggingFaceTB/smollm-corpus", "fineweb-edu-dedup", split="train", num_proc=16)
print("fineweb-edu-dedup completed successfully")
EOF

echo "Downloading fineweb-edu-dedup completed!"
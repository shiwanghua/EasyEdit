import json
import os

ds_dir = '/home/ubisec/swh/codes/EasyEdit2/data/CKnowEdit'
output_path = '/home/ubisec/swh/codes/EasyEdit2/data/CKnowEdit/history2.json'
output = []
for name in os.listdir(ds_dir):
    if 'history' not in name:
        continue
    ds_path = os.path.join(ds_dir, name)
    with open(ds_path, "r") as f:
        raw = json.load(f)
        
    origin_num = len(raw)
    pset = set()
    for i in raw:
        if i['prompt'] not in pset:
            pset.add(i['prompt'])
            output.append(i)
    json.dump(output, open(output_path, 'w', encoding='utf-8'), ensure_ascii=False, indent=4)
    print(f'name={name}, origin_num={origin_num}, pset_len={len(pset)}\n')
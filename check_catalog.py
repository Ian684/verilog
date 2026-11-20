from pathlib import Path
import json

ROOT=Path(__file__).resolve().parent
items=json.loads((ROOT/'EXERCISES.json').read_text(encoding='utf-8'))
expected=80 if ROOT.name=='algorithm' else 50
assert len(items)==expected,(len(items),expected)
assert [item['id'] for item in items]==list(range(1,expected+1))
assert len({(item['source'],item.get('entry','')) for item in items})==expected
for item in items:
    path=(ROOT/item['source']).resolve()
    assert path.is_relative_to(ROOT) and path.is_file(),item
    if item.get('entry'):assert item['entry'] in path.read_text(encoding='utf-8'),item
print(f'{ROOT.name}: {expected} source-backed exercise entries verified')

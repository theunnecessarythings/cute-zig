import sys
import re

if len(sys.argv) < 3:
    sys.exit(1)

with open(sys.argv[1], 'r') as f:
    content = f.read()

match = re.search(r'\.visible|\.entry', content)
if match:
    # Blackwell (sm_100) / Hopper (sm_90) usually like newer PTX
    header = ".version 8.0\n.target sm_80\n.address_size 64\n\n"
    body = content[match.start():]
    
    body = re.sub(r'\.version[^\n]*\n', '', body)
    body = re.sub(r'\.target[^\n]*\n', '', body)
    body = re.sub(r'\.address_size[^\n]*\n', '', body)
    
    body = body.replace('exit;', 'ret;')
    
    with open(sys.argv[2], 'w') as f:
        f.write(header + body)
        # Ensure null termination just in case
        f.write('\0')
else:
    with open(sys.argv[2], 'w') as f:
        f.write(content)
        f.write('\0')

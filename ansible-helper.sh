#!/usr/bin/env bash
docker run --rm -it \
  -v $(pwd):/ansible/playbooks \
  -v $(pwd)/xls_to_facts.py:/ansible/library/xls_to_facts.py \
  dteslya/ansible-playbook:2.7.9 "$@"
#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
g++ -std=c++17 -Wall -Wextra -pedantic src/main.cpp -o erl_hub
printf 'Build successful. Run ./erl_hub\n'

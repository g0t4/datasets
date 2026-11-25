#!/usr/bin/env bash
set -euo pipefail

demo=timings
zellij --session $demo --new-session-with-layout "timings.kdl"
zellij list-sessions
zellij delete-session $demo

## BTW I had deepseek comment out the EXIT CODE that zellij shows per pane when the command finishes... I hate that and it is not configurable... so removed and recomplied and fixed for my demos at least :)

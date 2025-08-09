#!/bin/bash
bluetoothctl << EOF
power on
agent on
default-agent
scan on
EOF


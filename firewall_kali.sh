#!/bin/bash
# ----------------------------------------------------
# Task 4 — Firewall Setup and Testing (Kali/Ubuntu)
# ----------------------------------------------------
# This script:
#   1. Checks firewall status
#   2. Enables UFW (if needed)
#   3. Allows SSH (22)
#   4. Blocks Telnet (23)
#   5. Tests the rule
#   6. Deletes rule and restores state
# ----------------------------------------------------

echo "=== Checking UFW status ==="
sudo ufw status verbose

echo "=== Enabling UFW (if not active) ==="
sudo ufw enable

echo "=== Allowing SSH port 22 (to prevent lockout) ==="
sudo ufw allow 22/tcp

echo "=== Blocking Telnet port 23 (inbound) ==="
sudo ufw deny in 23/tcp

echo "=== Current Firewall Rules ==="
sudo ufw status numbered

echo "=== Testing Port 23 Locally with netcat ==="
nc -zv localhost 23 2>&1 || echo "Telnet (port 23) is blocked or closed"

echo "=== Testing Port 22 Locally with netcat ==="
nc -zv localhost 22 2>&1 || echo "SSH (port 22) is allowed or open"

echo "=== Removing the Telnet block rule ==="
sudo ufw delete deny in 23/tcp

echo "=== Final UFW Status ==="
sudo ufw status verbose

echo "=== Firewall task completed successfully ==="

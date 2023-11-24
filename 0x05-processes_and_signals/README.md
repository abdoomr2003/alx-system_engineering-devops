# 0x05 Processes and Signals

## Overview

This project focuses on processes and signals in the context of DevOps, Shell scripting, and Bash programming. The tasks involve writing Bash scripts to manage processes, understand signals, and create init scripts. Additionally, there's a C program to demonstrate the creation of zombie processes.

## Project Details

- **By**: Sylvain Kalache
- **Weight**: 1
- **Start Date**: Nov 24, 2023, 5:00 AM
- **End Date**: Nov 25, 2023, 5:00 AM
- **Checker Release**: Nov 24, 2023, 11:00 AM
- **Auto Review**: A review will be launched automatically at the deadline.

## Resources

Read or watch the following to gain a deeper understanding of the concepts covered in this project:

- [Linux PID](https://linux.die.net/man/5/proc)
- [Linux process](https://man7.org/linux/man-pages/man5/proc.5.html)
- [Linux signal](https://man7.org/linux/man-pages/man7/signal.7.html)
- [Process management in Linux](https://www.tldp.org/LDP/lpg/node5.html)

### Man pages

Refer to the following man pages for additional details:

- `ps`
- `pgrep`
- `pkill`
- `kill`
- `exit`
- `trap`

## Learning Objectives

By the end of this project, you are expected to be able to explain the following concepts without the help of Google:

1. What is a PID?
2. What is a process?
3. How to find a process’ PID.
4. How to kill a process.
5. What is a signal?
6. What are the 2 signals that cannot be ignored?

## Requirements

### General

- **Allowed Editors**: vi, vim, emacs
- **Interpreted On**: Ubuntu 20.04 LTS
- **File Endings**: All files should end with a new line
- **Shellcheck**: Your Bash script must pass Shellcheck (version 0.7.0 via apt-get) without any error
- **Bash Script Header**: The first line of all your Bash scripts should be `#!/usr/bin/env bash`
- **Script Comments**: The second line of all your Bash scripts should be a comment explaining what the script is doing

## Task Details

### 0. What is my PID

Write a Bash script that displays its own PID.

### 1. List your processes

Write a Bash script that displays a list of currently running processes.


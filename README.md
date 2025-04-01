# CLI CTF Challenges

A series of command-line interface (CLI) Capture The Flag challenges designed to test your shell scripting and Unix/Linux system knowledge.

## Overview

This CTF consists of multiple levels, each focusing on different aspects of CLI and shell scripting. The challenges progressively increase in difficulty and complexity.

## Prerequisites

- A Unix-like environment (Linux, macOS, or WSL)
- Basic understanding of shell commands
- Familiarity with file system operations

## How to Play

1. Each level is contained in a shell script named `levelX.sh`
2. Run the setup script for the level you want to attempt:
   ```bash
   ./levelX.sh
   ```
3. Follow the instructions provided by each level
4. Find the hidden flag in each challenge
5. The flag format is: `SYNT=DF{...}`

## Level Descriptions

### Level 1
- Focus: Basic file operations and ROT13 encoding
- Skills: File navigation, basic encoding/decoding

### Level 2
- Focus: File manipulation and pattern matching
- Skills: grep, file searching

### Level 3
- Focus: Process management and signals
- Skills: Process handling, signal trapping

### Level 4
- Focus: File permissions and ownership
- Skills: chmod, chown, permission management

### Level 5
- Focus: Text processing and pattern matching
- Skills: sed, awk, text manipulation

### Level 6
- Focus: Advanced file permissions and hidden files
- Skills: Hidden directories, permission modification, trap commands

## Tips

- Read all hints carefully
- Use `man` pages for command documentation
- Try different approaches if one method doesn't work
- Pay attention to file permissions and ownership
- Look for hidden files and directories

## Getting Help

If you're stuck:
1. Check the hints provided in each level
2. Use `man` pages to understand commands better
3. Try different combinations of commands
4. Look for patterns in the challenge structure

## Contributing

Feel free to submit pull requests with new levels or improvements to existing ones.



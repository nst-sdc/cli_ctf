#!/bin/bash

# Set the flag content
flag="SYNT=DF{O3t1aa3e_Rkcy0e3e_2024} Znffntr=Obbz!"

# Create a directory for the challenge
mkdir -p level6_ctf
cd level6_ctf

# Create multiple hidden directories with different permissions
mkdir -p .hidden1/.hidden2/.hidden3
mkdir -p .visible/.invisible

# Create a file with the flag and set specific permissions
echo "$flag" > .hidden1/.hidden2/.hidden3/flag.txt
chmod 000 .hidden1/.hidden2/.hidden3/flag.txt

# Create dummy files to mislead
touch .visible/dummy1.txt
touch .visible/dummy2.txt
touch .invisible/.secret.txt

# Set up a trap to prevent direct access
trap 'echo "Nice try! But that\'s not the right way."' EXIT

# Create a hint file with encoded instructions
echo "Hint: The flag is hidden in plain sight, but you need the right permissions to see it." > .hint.txt
chmod 444 .hint.txt

# Create a script that will help solve the challenge
cat > solve.sh << 'EOL'
#!/bin/bash
# This script will help you find the flag
# But you need to understand file permissions first
if [ -r ".hidden1/.hidden2/.hidden3/flag.txt" ]; then
    cat .hidden1/.hidden2/.hidden3/flag.txt
else
    echo "You don't have the right permissions to read this file."
fi
EOL

chmod +x solve.sh

echo "Challenge setup complete."
echo "The flag is hidden somewhere in the 'level6_ctf' directory."
echo "You'll need to understand file permissions and hidden files to find it."
echo "Good luck!" 

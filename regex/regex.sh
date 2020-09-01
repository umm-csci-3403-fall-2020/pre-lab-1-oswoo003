# Written by Elk Oswood, August 2020.

# r0_input.txt > r0_output.txt
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

# r1_input.txt > r1_output.txt
# sed -E 's/\* ([A-Z]+), ^My favorite sandwich is ([a-z]+)/1. \1\n2. \2\n/' < r1_input.txt > r1_output.txt
awk 'match($0, /([A-Z]+), ^My favorite sandwich is$([a-z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r1_input.txt > r1_output.txt

# r2_input.txt > r2_output.txt
sed -E 's/\* sandwich with ([a-z]+/.+)/.\_([a-z]+)/1 \1\n2. \2\n/' < r2_input.txt > r2_output.txt

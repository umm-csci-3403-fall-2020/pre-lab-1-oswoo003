# Written by Elk Oswood, August 2020.

# r0_input.txt > r0_output.txt
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

# r1_input.txt > r1_output.txt
awk 'match($0, /I am (\w+)\. My favorite sandwich is (\w+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r1_input.txt > r1_output.txt

# r2_input.txt > r2_output.txt
awk 'match($0, /sandwich with (.*) (\w+ \w+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r2_input.txt > r2_output.txt

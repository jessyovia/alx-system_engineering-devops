#!/usr/bin/env ruby

# Accept the first command-line argument
arg = ARGV[0]

# Define the regular expression
regex = /hbt{1,}n/

# Check if the argument matches the regular expression
if arg =~ regex
  puts arg
end

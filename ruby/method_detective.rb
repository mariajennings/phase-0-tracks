# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".gsub(/o/, "oo")
# => “zoom”
# Could do the reverse with .squeeze

p "enhance".center(10)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual".insert(-1, ' suspects')
p "the usual".concat " suspects"
#=> "the usual suspects"

p " suspects".insert(0, "the usual")
p " suspects".prepend "the usual"
# => "the usual suspects"

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter".slice!(1..-1)
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".squeeze("  ")
# => "Elementary, my dear Watson!"

p "z".ord
# => 122
# 122 is the integer ordinal of the lowercase letter z in the ASCII (American Standard Code for Information Interchange)/Unicode table. The ASCII table is a numerical representaiton of all characters. .ord converts all printable characters into their  integer ordinal.

p "How many times does the letter 'a' appear in this string?".count("a")
# => 4
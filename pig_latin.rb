#!/usr/bin/env ruby

def pig_latinize(word)
  if ['a','e','i','o','u'].find { |x| x == word[0] }
    word + 'way'
  else
    word[1..-1] + word[0] + 'ay'
  end
end


def word_map(line)
  line.gsub(/[a-zA-Z]+/) {|x| pig_latinize x}
  # mapped = line.split.map {|x| yield x}
  # spaces = line.scan /\s/
  # if line[0].match /s/
  #   ret = [spaces[0]]
  #   spaces.shift
  # else
  #   ret = []
  # end
  # if spaces.length < mapped.length
  #   spaces.push ""
  # end
  # spaces.each_index {|i| ret = ret + [mapped[i], spaces[i]]}
  # ret.join
end

File.open(ARGV[0]) do |r|
  File.open(ARGV[1], 'w') do |w|
    while  (line = r.gets)
      line2 = word_map(line) {|x| pig_latinize x}
      w.print line2
    end
  end
end


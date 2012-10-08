#!/usr/bin/ruby

# 1.1
def isuniq(s)
  origin_size = s.size
  new_size = s.split("").uniq.join.size
  if origin_size != new_size
    return false
  end
  return true
end

puts "1 is uniq" if isuniq("abcddt")
puts "2 is uniq" if isuniq("abcdt")

#1.2
# Class of reverse
class Sreverts
	def initialize(s)
		@@s = s
	end
	def	revs
	  #return @@s.reverse!
    return @@s.chars.inject([]){|s, c| s.unshift(c)}.join
	end
end

s=Sreverts.new("aabbccdd")
puts s.revs

# method of reverse
def revstring(s)
  return s.chars.inject([]){|s,c| s.unshift(c)}.join
end

m="Hello World!"
puts revstring(m)

# built-in string reverse
t="11223344"
puts t.reverse

# 1.3
def rmdup(s)
  return s.split("").uniq.join
end

puts rmdup("abcddtthh")

#1.4
def is_anagrams(s, a)
  return true if s== a.reverse
  return false
end

s1="Hello World"
s2="dlroW olleH"

puts "s1 and s2 are anagrams" if is_anagrams(s1,s2)

#1.5
def s_replace(s)
  #return s.chars.inject([]){ |s,c| puts s=(c=='\s'?'%20':c)}
  a=""
  s.chars.each do |x|
    if x.match("\s")
        a<<"%20"
    else
        a<<x
    end
  end
  return a
end

puts s_replace("AA BB CC")
puts "aa bb cc".gsub("\s","%20")


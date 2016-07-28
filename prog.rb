# -*- coding: utf-8 -*-

def f(x)
  return eval($func)
end

puts "Input f(x)"
$func = gets.chop

# Initialize frame buffer
# frame buffer x=0..79, y=0..24
frame = []
24.times do
  line = []
  line << '|'
  79.times do
    line << ' '
  end
  frame << line
end
line = ['+']
79.times do
  line << '-'
end
frame << line

# X label
frame[23][78] = 'X'

# Y label
frame[0][1] = 'Y'

# draw func
###
### 分担3
#関数を配列の形にする
funcs = $func.split("")
#配列の文字数を求める
length = funcs.length
#表示
frame[0][20] = "f"
frame[0][21] = "("
frame[0][22] = "x"
frame[0][23] = ")"
frame[0][24] = "="
i=1
while i<=length do
frame[0][24+i] = funcs[i-1]
i=i+1
end
###


# draw graph
for x in 0..79 do
###
### 分担2
###
end

# printout
frame.each do |line|
  line.each do |ch|
    print ch
  end
  print "\n"
end


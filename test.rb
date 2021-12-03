#a = [0,1]
#for i in 0..100 do  # "1..6"は、1～6までの範囲を表す
#a.push(a[i]+a[i+1])
#end
#print a[100]
def divisor(num)
  result = []
  i = 1
  while i <= num do
    remainder = num % i
    if remainder == 0
      result << i
    end 
    i += 1
  end
  return result
end

puts "約数を算出したい整数を入力してください"
num = gets.to_i
r = divisor(num)

puts r
module FunWithStrings
  def palindrome?
    # your code here
    a=downcase
    b=a.gsub(/\W/,'')
    c=b.reverse
    return b==c
  end
  def count_words
    a=downcase  
    b=a.scan(/\w+/)
    z=b.uniq
    c=[]
    z.each{|x| c.push(b.count(x))}
    return Hash[z.zip c]
    # your code here
  end
  def anagram_groups
    temp = Hash.new(0)
    a=scan(/\w+/)
    z=[]
    a.each{|x|
      temp[x] = x.split("").sort.join
    }
    y=true
    temp.each_key{|k|  
      b=temp.delete(k)
      temp.each_key{|s|
          if temp[s].to_s==b.to_s
            e=[s.to_s,k.to_s]
            z.push(e)
            temp.delete(s)
            y=false
          end
          if y
            e=[s.to_s]
            z.push(e)
          end
      }
    }
    return z
    # your code here
  end
end
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

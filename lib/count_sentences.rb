require 'pry'

class String

  def sentence?
     self.end_with?(".")  
    # puts self
  end
 
  def question?
    self.end_with?("?")

  end

  def exclamation?
     self.end_with?("!")

  end

  def count_sentences
     sentence= self.split(/[.!?]/)
     count= sentence.filter {|sent1| !sent1.empty?}
      count.length
    end
end

word = String.new
"why are you running.".sentence?
"why are you eating.".question?
"why are you sitting!".exclamation?
"why are you watchimg.why are you running.why are you sitting!".count_sentences
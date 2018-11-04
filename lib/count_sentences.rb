require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?

    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    if (!(self.includes?("!") || self.includes?("?"))
      self.split(/\.\s/).count
    else
      self.split(/\.\s/).split('?').count
  end
end

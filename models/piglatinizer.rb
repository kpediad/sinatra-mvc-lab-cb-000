class PigLatinizer
  def initialize(text)
    @normal_text = text.downcase
  end

  def piglatinize
    starting_char = @normal_text.slice!(0)
    @normal_text = @normal_text + starting_char + 'ay'
  end
end

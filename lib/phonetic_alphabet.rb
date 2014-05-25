require "phonetic_alphabet/version"

module PhoneticAlphabet

  module StringInstanceMethods
    def to_p
      PhoneticAlphabet.translate(self)
    end

    def each_char
      self.split("").each { |i| yield i }
    end
  end

  HASH = { 'A' => 'Alfa',    'B' => 'Bravo',
           'C' => 'Charlie', 'D' => 'Delta',
           'E' => 'Echo',    'F' => 'Foxtrot',
           'G' => 'Golf',    'H' => 'Hotel',
           'I' => 'India',   'J' => 'Juliett',
           'K' => 'Kilo',    'L' => 'Lima',
           'M' => 'Mike',    'N' => 'November',
           'O' => 'Oscar',   'P' => 'Papa',
           'Q' => 'Quebec',  'R' => 'Romeo',
           'S' => 'Sierra',  'T' => 'Tango',
           'U' => 'Uniform', 'V' => 'Victor',
           'W' => 'Whiskey', 'X' => 'X-ray',
           'Y' => 'Yankee',  'Z' => 'Zulu',
           '0' => 'Zero',    '1' => 'One',
           '2' => 'Two',     '3' => 'Three',
           '4' => 'Four',    '5' => 'Five',
           '6' => 'Six',     '7' => 'Seven',
           '8' => 'Eight',   '9' => 'Niner' }

  def self.translate(string)
    ret = ''
    string.each_char do |c|
      ret += "#{HASH[c.upcase]} "
    end
    ret.chop
  end
end

String.send :include, PhoneticAlphabet::StringInstanceMethods

MORSE_HASH = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C',
  '-..' => 'D', '.' => 'E', '..-.' => 'F',
  '--.' => 'G', '....' => 'H', '..' => 'I',
  '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
  '...' => 'S', '-' => 'T', '..-' => 'U',
  '...-' => 'v', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z'
}.freeze

def decode_phrase(str)
  _words = str.split(/   /)
  _decoded_phrase = ''
  _words.each_with_index do |i, index|
    _word = ''

    _chars = i.split
    _chars.each do |j|
      _word += MORSE_HASH[j].to_s
    end

    _decoded_phrase = if index === 0
                        _decoded_phrase + _word
                      else
                        "#{_decoded_phrase} #{_word}"
                      end
  end
  _decoded_phrase
end

puts decode_phrase('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

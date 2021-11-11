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
  words = str.split(/   /)
  decoded_phrase = ''
  words.each_with_index do |i, index|
    word = ''

    chars = i.split
    chars.each do |j|
      word += MORSE_HASH[j].to_s
    end

    decoded_phrase = if index.zero?
                       decoded_phrase + word
                     else
                       "#{decoded_phrase} #{word}"
                     end
  end
  decoded_phrase
end

puts decode_phrase('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

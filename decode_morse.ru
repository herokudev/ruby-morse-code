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

def decode_mo_char(char)
  MORSE_HASH[char].to_s
end

puts decode_mo_char('.-')

def decode_mo_word(word)
  dword = ''

  word.split.each_with_index do |i, _index|
    dword += decode_mo_char(i)
  end

  dword.to_s
end

puts decode_mo_word('-- -.--')

def decode_mo_phrase(str)
  words = str.split(/   /)
  decoded_phrase = ''
  words.each_with_index do |i, index|
    decoded_phrase = if index.zero?
                       decoded_phrase + decode_mo_word(i)
                     else
                       "#{decoded_phrase} #{decode_mo_word(i)}"
                     end
  end
  decoded_phrase
end

puts decode_mo_phrase('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

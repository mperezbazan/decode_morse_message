MORSE_CODE = {
  a: '.-',
  b: '-...',
  c: '_.-.',
  d: '-..',
  e: '.',
  f: '..-.',
  g: '--.',
  h: '....',
  i: '..',
  j: '.---',
  k: '-.-',
  l: '.-..',
  m: '--',
  n: '-.',
  o: '---',
  p: '.--.',
  q: '--.-',
  r: '.-.',
  s: '...',
  t: '-',
  u: '..-',
  v: '...-',
  w: '.--',
  x: '-..-',
  y: '-.--',
  z: '--..'
}.freeze

def decode_char(char)
  MORSE_CODE.each do |key, code|
    return key.upcase if code == char
  end
end

def decode_word(word)
  decoded_word = ''
  characters = word.split
  characters.each { |c| decoded_word = "#{decoded_word}#{decode_char(c)}" }
  decoded_word
end

def decode(message)
  decoded_message = ''
  words = message.split('   ')
  words.each { |w| decoded_message = "#{decoded_message} #{decode_word(w)}" }
  decoded_message.strip
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
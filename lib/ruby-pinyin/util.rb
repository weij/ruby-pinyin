# -*- coding: utf-8 -*-

module PinYin
  module Util
    extend self

    ASCIIMapping = {
      'ā' => ['a', 1], 'ē' => ['e', 1], 'ī' => ['i', 1], 'ō' => ['o', 1], 'ū' => ['u', 1], 'ǖ' => ['yu', 1],
      'á' => ['a', 2], 'é' => ['e', 2], 'í' => ['i', 2], 'ó' => ['o', 2], 'ú' => ['u', 2], 'ǘ' => ['yu', 2],
      'ǎ' => ['a', 3], 'ě' => ['e', 3], 'ǐ' => ['i', 3], 'ǒ' => ['o', 3], 'ǔ' => ['u', 3], 'ǚ' => ['yu', 3],
      'à' => ['a', 4], 'è' => ['e', 4], 'ì' => ['i', 4], 'ò' => ['o', 4], 'ù' => ['u', 4], 'ǜ' => ['yu', 4]
    }

    def to_ascii(reading, with_tone=true)
      ASCIIMapping.each do |char, (ascii, tone)|
        if reading.include? char
          if with_tone
            return reading.sub(char, ascii).concat(tone.to_s)
          else
            return reading.sub(char, ascii)
          end
        end
      end
      reading
    end

  end
end

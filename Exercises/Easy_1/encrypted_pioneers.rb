# Encrypted Pioneers
# The following list contains the names of individuals who are pioneers in the field of computing or that have had a significant influence on the field. The names are in an encrypted form, though, using a simple (and incredibly weak) form of encryption called Rot13.

# Write a program that deciphers and prints each of these names.

LOWER_ALPHA = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
UPPER_ALPHA = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

def un_rot13(name)
  names_array = name.split(' ')

  ue_names = names_array.map do |name|
    name.chars.map do |letter|
      if !LOWER_ALPHA.include?(letter) && !UPPER_ALPHA.include?(letter)
        letter
      elsif letter == letter.upcase
        UPPER_ALPHA[UPPER_ALPHA.index(letter) - 13]
      else
        LOWER_ALPHA[LOWER_ALPHA.index(letter) - 13]
      end
    end
  end

  ue_names.map { |name| name.join }.join(' ')
end

p un_rot13("Nqn Ybirynpr")
p un_rot13("Tenpr Ubccre")
p un_rot13("Nqryr Tbyqfgvar")
p un_rot13("Nyna Ghevat")
p un_rot13("Puneyrf Onoontr")
p un_rot13("Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv")
p un_rot13("Wbua Ngnanfbss")
p un_rot13("Ybvf Unvog")
p un_rot13("Pynhqr Funaaba")
p un_rot13("Fgrir Wbof")
p un_rot13("Ovyy Tngrf")
p un_rot13("Gvz Orearef-Yrr")
p un_rot13("Fgrir Jbmavnx")
p un_rot13("Xbaenq Mhfr")
p un_rot13("Fve Nagbal Ubner")
p un_rot13("Zneiva Zvafxl")
p un_rot13("Lhxvuveb Zngfhzbgb")
p un_rot13("Unllvz Fybavzfxv")
p un_rot13("Tregehqr Oynapu")
require 'awesome_print'

class Alouette
  @body_parts = %W(la\ tête le\ bec les\ yeux le\ cou les\ ailes les\ pattes la\ queue le\ dos)

  def self.lines_for_verse(verse_num)
    lines = []
    i = 0

    while i <= verse_num
      lines << "Et " + @body_parts[i] + "!"
      i += 1
    end

    return lines.reverse!
  end

  def self.verse(verse_num)
    first_line = "Je te plumerai "
    i = verse_num
    verse = ""

    2.times do
      verse += first_line + @body_parts[verse_num] + ".\n"
    end

    until i < 0
      2.times do
       verse +=  "Et " + @body_parts[i] + "!\n"
      end
      i -= 1
    end

     fini = Alouette.verse_end
     verse += fini

     return verse

  end

  def self.sing
    i = 0
    j = @body_parts.length

    song = Alouette.refrain + "\n"

    while i < j
      j.times do
        song += Alouette.verse(i) + "\n\n" + Alouette.refrain + "\n"
        i += 1
      end
    end

    return song
  end

  private
  def self.verse_end
    return "Alouette!\nAlouette!\nA-a-a-ah"
  end

  def self.refrain
    return "Alouette, gentille alouette,\nAlouette, je te plumerai.\n"
  end
end
#
song = Alouette.sing
print song

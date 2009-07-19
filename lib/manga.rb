require 'lib/chapter'


module Mangaru

  class Manga

    def list
      []
    end

    def chapter name
      Mangaru::Chapter.new
    end

  end

end

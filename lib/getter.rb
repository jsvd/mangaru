require 'lib/manga'

module Mangaru

  class Getter

    attr :name

    def initialize name = "unnamed"
      @name = name
    end

    def list
      []
    end
  
    def manga name
      Mangaru::Manga.new
    end
  
  end
  
end

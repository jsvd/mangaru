require 'lib/manga'

module Mangaru

  class Getter

    def initialize
      
    end

    def list
      []
    end
  
    def manga name
      Mangaru::Manga.new
    end
  
  end
  
end

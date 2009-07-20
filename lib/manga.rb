require 'lib/chapter'


module Mangaru

  class Manga

    attr_reader :name 

    def initialize name = "unnamed"
      @name = name
    end

    def list
      []
    end

    def chapter name
      Mangaru::Chapter.new
    end

  end

end

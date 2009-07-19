require 'lib/page'


module Mangaru

  class Chapter

    def list
      []
    end

    def page number
      Mangaru::Page.new
    end

  end

end

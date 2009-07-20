


module Mangaru

  class OneManga < Getter

    attr_reader :name

    def initialize 
      @url = "http://onemanga.com/"
      @mangas = {}
      #@doc = Nokogiri::HTML(open('http://www.onemanga.com/directory'))
      #elements = doc.xpath("//table[@class='ch-table']/tr")
      #elements.delete_at 0
      @name = "OneManga"
    end

    def list
      url = @url + 'directory'
      @mangas.keys
    end
  
    def manga name
      @mangas[:name]
      OMManga.new
    end
  
  end

  class OMManga < Manga
  end

  class OMChapter < Chapter
# irb(main):264:0> first = doc.xpath("//table[@class='ch-table']/tr").first
# <tr>
#   <th class="ch-subject">Chapter Name</th>
#   <th class="ch-scans-by">Scans By</th>
#   <th class="ch-date">Date Added</th> 
# </tr>
  end
  
  class OMPage < Page
  end
  
end

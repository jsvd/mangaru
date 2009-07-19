# irb(main):264:0> first = doc.xpath("//table[@class='ch-table']/tr").first
# <tr>
#   <th class="ch-subject">Chapter Name</th>
#   <th class="ch-scans-by">Scans By</th>
#   <th class="ch-date">Date Added</th> 
# </tr>



module Mangaru

  class OneManga < Getter

    def initialize
      #@url = "http://onemanga.com/"
    end

    def list
      #url = @url + 'directory'
      #doc = Nokogiri::HTML(open('http://www.onemanga.com/Naruto/388/01'))
      []
    end
  
    def manga name
      OMManga.new
    end
  
  end

  class OMManga < Manga
  end
  
end

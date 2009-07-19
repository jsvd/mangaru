require 'rubygems'
require 'nokogiri'
require 'open-uri'

require 'spec'
require 'spec/shared_examples.rb'

require 'lib/getter'
require 'lib/manga'



# doc = Nokogiri::HTML(open('http://www.onemanga.com/Naruto/388/01'))
# doc.xpath("//select[@id='id_page_select']/option/@value").each {|i| puts i}
# doc.xpath("//img[@class='manga-page']/@src")

describe Mangaru::Getter do

  before :each do
    @getter = Mangaru::Getter.new
  end

  it_should_behave_like "all getters"

end

describe Mangaru::Manga do

  before :each do
    @manga = Mangaru::Manga.new
  end

  it_should_behave_like "all mangas"

end


describe Mangaru::Chapter do

  before :each do
    @chapter = Mangaru::Chapter.new
  end

  it_should_behave_like "all chapters"

end

describe Mangaru::Page do

  before :each do
    @page = Mangaru::Page.new
  end

  it_should_behave_like "all pages"

end

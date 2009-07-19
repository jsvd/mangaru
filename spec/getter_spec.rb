require 'rubygems'
require 'nokogiri'
require 'open-uri'

require 'spec'

require 'lib/getter'
require 'lib/manga'



# doc = Nokogiri::HTML(open('http://www.onemanga.com/Naruto/388/01'))
# doc.xpath("//select[@id='id_page_select']/option/@value").each {|i| puts i}
# doc.xpath("//img[@class='manga-page']/@src")

shared_examples_for "all getters" do

  it "should have a #list method" do
    @getter.should respond_to :list
  end

  it "should have a #manga method" do
    @getter.should respond_to :manga
  end

  describe "@getter#list" do
    it "should return an array of Mangaru::Manga objects" do
      @getter.list.should be_an_instance_of Array
      @getter.list.each { |manga| manga.should be_an_kind_of Mangaru::Manga } 
    end
  end

end

shared_examples_for "all mangas" do

  it "should have a #list method" do
    @manga.should respond_to :list
  end

  it "should have a #chapter method" do
    @manga.should respond_to :chapter
  end

end


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

end



# specific getter #TODO automate this
=begin
require 'lib/getters/onemanga'
describe Mangaru::OneManga do

  before :each do
    @getter = Mangaru::OneManga.new
  end

  it_should_behave_like "all getters"

end
=end

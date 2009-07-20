require 'spec'

shared_examples_for "all getters" do

  it "should have a name passed upon creation" do
    lambda { @getter.name }.should_not raise_error
    @getter.name.should be_an_instance_of String
  end

  it "should have a #list method that returns and array of :name, :last_chapter, :last_update" do
    @getter.should respond_to :list
    @getter.list.should be_an_instance_of Array
  end

  it "should have a #manga method that returns a Mangaru::Manga object" do
    @getter.should respond_to :manga
    lambda { @getter.manga }.should raise_error ArgumentError
    @getter.manga(:first).should be_a_kind_of Mangaru::Manga
  end

end

shared_examples_for "all mangas" do

  it "should have a #list method" do
    @manga.should respond_to :list
    @manga.list.should be_an_instance_of Array
  end

  it "should have a #chapter method" do
    @manga.should respond_to :chapter
    lambda { @manga.chapter }.should raise_error ArgumentError
    @manga.chapter(:first).should be_an_kind_of Mangaru::Chapter
  end

end

shared_examples_for "all chapters" do

  it "should have a #list method" do
    @chapter.should respond_to :list
    @chapter.list.should be_an_instance_of Array
  end

  it "should have a #page method" do
    @chapter.should respond_to :page
    lambda { @chapter.page }.should raise_error ArgumentError
    @chapter.page(:first).should be_an_kind_of Mangaru::Page 
  end

end

shared_examples_for "all pages" do
  
  it "should have a #number method" do
    @page.should respond_to :number
    @page.number.should be_a_kind_of Numeric
  end

  it "should have an #image method" do
    @page.should respond_to :image
  end
end


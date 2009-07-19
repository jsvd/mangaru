require 'rubygems'
require 'nokogiri'
require 'open-uri'

require 'spec'
require 'spec/shared_examples'

require 'lib/getter'

# specific getter #TODO automate this
require 'getters/onemanga'

describe Mangaru::OneManga do

  before :each do
    @getter = Mangaru::OneManga.new
  end

  it_should_behave_like "all getters"

end

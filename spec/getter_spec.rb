require 'lib/getter'
require 'getters/onemanga'
require 'spec/mangaru_spec' # FIX: requiring this runs mangaru specs. We don't need that

# specific getter #TODO automate this
require 'getters/onemanga'
describe Mangaru::OneManga do

  before :each do
    @getter = Mangaru::OneManga.new
  end

  it_should_behave_like "all getters"

end

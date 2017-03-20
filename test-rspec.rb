
# describe Hash do
#   it "should return a blank instance" do
#     Hash.new.should == {}
#   end
# end

describe Hash do
  before(:all) do
    @hash = Hash.new({:hello => 'world'})
  end

  it "should return a blank instance" do
    Hash.new.should == {}
  end

  it "expect hash the correct information in a key" do
    @hash[:hello].expect == 'world'
  end
end

# class Burger
#   def initialize(options={})
#       @options = options
#   end

#   def apply_ketchup
#     @ketchup = @options[:ketchup]
#   end

#   def has_ketchup_on_it?
#     @ketchup
#   end
# end


# describe Burger do
#   describe "#apply_ketchup" do
#     subject { burger }
#     before  { burger.apply_ketchup }

#     context "with ketchup" do
#       let(:burger) { Burger.new(:ketchup => true) }

#       it { should have_ketchup_on_it }
#     end

#     context "without ketchup" do
#       let(:burger) { Burger.new(:ketchup => false) }

#       it { should_not have_ketchup_on_it }
#     end
#   end
# end
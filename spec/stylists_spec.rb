require('spec_helper')

describe(Stylist) do
  describe('#name') do
    it('will return the name of the stylist') do
      stylist = Stylist.new({:name => "Jane", :id => nil})
      expect(stylist.name()).to(eq("Jane"))
    end
  end
end

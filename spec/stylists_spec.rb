require('spec_helper')

describe(Stylist) do
  describe('#name') do
    it('will return the name of the stylist') do
      stylist = Stylist.new({:name => "Jane", :id => nil})
      expect(stylist.name()).to(eq("Jane"))
    end
  end

  describe('#id') do
    it('will set the id of a stylist') do
      stylist = Stylist.new({:name => "Jane", :id => nil})
      stylist.save()
      expect(stylist.id()).to(be_an_instance_of(Fixnum))
    end
  end

  describe('#save') do
    it("lets you save a stylist to the database") do
      stylist = Stylist.new({:name =>  "Jane", :id => nil})
      stylist.save()
      expect(Stylist.all()).to(eq([stylist]))
    end
  end

  describe(".all") do
    it ("starts off with no stylists") do
      expect(Stylist.all()).to(eq([]))
    end
  end
end

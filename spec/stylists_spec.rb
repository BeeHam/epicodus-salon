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

  describe("#==") do
    it("is the same stylist if they have the same name") do
      stylist1 = Stylist.new({:name => "Jane", :id => nil})
      stylist2 = Stylist.new({:name => "Jane", :id => nil})
      expect(stylist1).to(eq(stylist2))
    end
  end

  describe('.find') do
    it("returns a stylist by its ID") do
      stylist1 = Stylist.new({:name => "Jane", :id => nil})
      stylist1.save()
      stylist2 = Stylist.new({:name => "Sue", :id => nil})
      stylist2.save()
      expect(Stylist.find(stylist1.id())).to(eq(stylist1))
    end
  end

  describe('#clients') do
    it("returns an array of clients for a stylist") do
      stylist = Stylist.new({:name => "Jane", :id => nil})
      stylist.save()
      client1 = Client.new({:name => "Alan", :stylist_id => stylist.id(), :id => nil})
      client1.save()
      client2 = Client.new({:name => "Review Ruby", :stylist_id => stylist.id(), :id => nil})
      client2.save()
      expect(stylist.clients()).to(eq([client1, client2]))
    end
  end

  describe("#update") do
    it("lets you update stylists in the database") do
      stylist = Stylist.new({:name => "Jane", :id => nil})
      stylist.save()
      stylist.update({:name => "Jane Doe"})
      expect(stylist.name()).to(eq("Jane Doe"))
    end
  end

  describe("#delete") do
    it("lets you delete a stylist from the database") do
      stylist1 = Stylist.new({:name => "Jane", :id => nil})
      stylist1.save()
      stylist2 = Stylist.new({:name => "Sue", :id => nil})
      stylist2.save()
      stylist1.delete()
      expect(Stylist.all()).to(eq([stylist2]))
    end
  end

end

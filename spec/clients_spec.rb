require('spec_helper')

describe(Client) do

  describe("#name") do
    it("lets you retrieve client name") do
      client = Client.new({:name => "Sue", :stylist_id => 1, :id => nil})
      expect(client.name()).to(eq("Sue"))
    end
  end

  describe('#stylist_id') do
    it("lets you read the stylist ID out") do
      client = Client.new({:name => "Sue", :stylist_id => 1, :id => nil})
      expect(client.stylist_id()).to(eq(1))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Client.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a client to the array of saved clients") do
      client = Client.new({:name => "Sue", :stylist_id => 1, :id => nil})
      client.save()
      expect(Client.all()).to(eq([client]))
    end
  end

  describe('#==') do
    it('is the same client if they have the same name') do
      client1 = Client.new({:name => 'Sue', :stylist_id => 1, :id => nil})
      client2 = Client.new({:name => 'Sue', :stylist_id => 1, :id => nil})
      expect(client1).to(eq(client2))
    end
  end

  describe(".clear") do
    it("empties out all of the saved clients") do
      Client.new({:name => "Sue", :stylist_id => 1, :id => nil})
      Client.clear()
      expect(Client.all()).to(eq([]))
    end
  end

  # describe("#update") do
  #   it("lets you update clients in the database") do
  #     client = Client.new({:name => "Sue", :stylist_id => 1, :id => nil})
  #     client.save()
  #     client.update({:name => "Susan"})
  #     expect(client.name()).to(eq("Susan"))
  #   end
  # end

  describe("#delete") do
    it("lets you delete a client from the database") do
      client1 = Client.new({:name => "Jane", :stylist_id => 1, :id => nil})
      client1.save()
      client2 = Client.new({:name => "Sue", :stylist_id => 1, :id => nil})
      client2.save()
      client1.delete()
      expect(Client.all()).to(eq([client2]))
    end
  end

end

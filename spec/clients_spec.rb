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

end

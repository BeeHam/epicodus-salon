require('spec_helper')

describe(Client) do

  describe("#name") do
    it("lets you retrieve client name") do
      client = Client.new({:name => "Sue", :stylist_id => 1, :id => nil})
      expect(client.name()).to(eq("Sue"))
    end
  end
end

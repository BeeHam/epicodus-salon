class Client
  attr_reader(:name, :stylist_id, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @stylist_id = attributes.fetch(:stylist_id)
    @id = attributes.fetch(:id)
  end

  define_singleton_method(:all) do
    returned_clients = DB.exec("SELECT * FROM clients;")
    clients = []
    returned_clients.each() do |client|
      name = client.fetch("name")
      stylist_id = client.fetch("stylist_id").to_i()
      id = client.fetch('id')
      clients.push(Client.new({:name => name, :stylist_id => stylist_id, :id => id}))
    end
    clients
  end

  define_method(:save) do
    DB.exec("INSERT INTO clients (name, stylist_id) VALUES ('#{@name}', #{@stylist_id});")
  end

  define_method(:==) do |other|
    self.name().==(other.name()).&(self.stylist_id().==(other.stylist_id()))
  end

  define_singleton_method(:clear) do
    DB.exec("DELETE FROM clients *;")
  end

  # define_method(:update) do |attributes|
  #   @name = attributes.fetch(:name, @name)
  #   @stylist_id = attributes.fetch(:stylist_id, @stylist_id)
  #   @id = self.id()
  #   DB.exec("UPDATE clients SET name = '#{@name}', stylist_id = #{@stylist_id} WHERE id = #{@id};")
  # end

end

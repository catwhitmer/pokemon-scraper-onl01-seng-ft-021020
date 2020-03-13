class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name 
    @type = type 
    @db = db
  end
  
  def self.save (name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  
  def self.find(id,db)
    db.execute("SELECT * FROM pokemon WHERE id = ?")
 
    pokemon = DB[:conn].execute(id, db)
    pokemon_new = Pokemon.new(pokemon)
    pokemon_new
    end
end

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

  
  def self.find(id)
    sql = "SELECT * FROM songs WHERE id = ?"
    result = DB[:conn].execute(sql, id)[0]
    Song.new(result[0], result[1], result[2])
  end
end

class Forgery::Artist < Forgery

  def self.name
    dictionaries[:artists].random.unextend
  end

end

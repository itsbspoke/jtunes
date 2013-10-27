class Forgery::Album < Forgery

  def self.name
    dictionaries[:albums].random.unextend
  end

end

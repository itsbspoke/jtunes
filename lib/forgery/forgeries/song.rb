class Forgery::Song < Forgery

  def self.name
    dictionaries[:songs].random.unextend
  end

end

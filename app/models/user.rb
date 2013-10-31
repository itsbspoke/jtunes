class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def is_old_enough
    18.years.from_now(birth_date) < Time.now
  end

  def self.random
    where("random() < 0.25").first
  end
end

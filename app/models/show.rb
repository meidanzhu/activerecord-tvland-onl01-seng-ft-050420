class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    full_name = []
    self.actors.each do |actor|
      full_name << actor.full_name
    end
    full_name
  end
end

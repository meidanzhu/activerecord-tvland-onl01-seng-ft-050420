class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name = self.first_name + " " + self.last_name
  end

  def list_roles
    arr = []
    self.characters.each do |character|
      str = "#{character.name} - #{character.show.name}"
      arr << str
    end
    arr
  end
end

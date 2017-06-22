class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    char_name = self.characters.first.name
    show_name = self.shows.first.name
    "#{char_name} - #{show_name}"
  end

end

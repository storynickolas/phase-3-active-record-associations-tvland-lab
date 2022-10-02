class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    selection = []
    for actor in self.actors do
      selection.push(actor.full_name)
    end
    selection
  end
  
end
class Pokemon < ActiveRecord::Base
  belongs_to :pokemons
  has_many :pokemons
end

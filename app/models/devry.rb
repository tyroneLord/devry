class Devry < ActiveRecord::Base
  attr_accessible :age, :major, :name
  validates :age, :presence => true
  validates :name, :presence => true, :length => { :maximum => 5}
end

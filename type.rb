class Type < ActiveRecord::Base
  has_many :garments

  def initialize(name)
    @name = name
  end
end
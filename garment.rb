class Garment < ActiveRecord::Base
  belongs_to :type
  scope :clean, where(:soiled => nil)

  def initialize(opts)
    @name = opts.fetch(:name) { raise ArgumentError }
  end
  
  def garment_soiled
  end
  
  def garment_clean
  end
end
require 'active_record'

ActiveRecord::Base.establish_connection :adapter  => 'sqlite3',
                                        :database => './closet.db'

class Garment < ActiveRecord::Base
  belongs_to :type
  scope :clean, where(:soiled => nil)

  def initialize(opts)
    @name = opts.fetch(:name) { raise ArgumentError }
  end
end

class Type < ActiveRecord::Base
  has_many :garments

  def initialize(name)
    @name = name
  end
end
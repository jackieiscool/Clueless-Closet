require 'active_record'

ActiveRecord::Base.establish_connection :adapter  => 'sqlite3',
                                        :database => './closet.db'
                                        
class Closet
  
  def add_garment
  end
  
  def remove_garment
  end
  
  def choose_outfit
  end
  
  def laundry
  end
  
end



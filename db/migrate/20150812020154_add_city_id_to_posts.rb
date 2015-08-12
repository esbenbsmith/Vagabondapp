class AddCityIdToPosts < ActiveRecord::Migration
  def change

  	change_table :posts do |t|
    
    	t.references :city
  	end
  end
end

class AddCityIdToUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
    	t.references :city
  	end
  end
end

class AddUserIdToPosts < ActiveRecord::Migration
  def change

  	change_table :pets do |t|
    
    	t.references :owner 
  	end
  end
end

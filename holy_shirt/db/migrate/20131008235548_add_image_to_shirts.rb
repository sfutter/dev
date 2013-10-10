class AddImageToShirts < ActiveRecord::Migration
  def change
  	add_column :shirts, :image, :string  #give me a string field called
  	#image on my shirts table. #image is the name of the field
  end
end

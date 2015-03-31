class Card < ActiveRecord::Base
	#attr_accessible: :name,:set,:color
		


  
 private

 def card_params
    params.require(:Card).permit(:name, :set, :color)
 end

end

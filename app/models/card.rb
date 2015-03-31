class Card < ActiveRecord::Base
	#attr_accessible: :name,:set,:color
		


  
  private

  def person_params
    params.require(:Card).permit(:name, :set, :color)
  end

end

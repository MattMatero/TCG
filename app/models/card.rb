class Card < ActiveRecord::Base
  before_create :resize


  #active admin color selection
  COLORS = {
    'White' => 'white',
    'Black' => 'black',
    'Blue'  => 'blue',
    'Green' => 'green',
    'Red'   => 'red'
  }


  #handles image resizing
  # before_validation(on: :create) do 
  #   Image.resize(self.image, self.image, 120,120)
  # end

 private

 def card_params
    params.require(:Card).permit(:name, :set, :color)
 end

 # def resize
 #    Image.resize(self.image, self.image, 120,120)
 # end

end

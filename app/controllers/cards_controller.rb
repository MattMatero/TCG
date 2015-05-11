class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  # GET /cards
  # GET /cards.json
  def index
    @cards = Card.all
  end

  # GET /cards/1
  # GET /cards/1.json
  def show
    if(params[:id].to_s == 'office')
      @card = Card.new
      render 'office'
      return
    elsif(params[:id].to_s == 'search')
      render 'search'
      return
    end

    redirect_to action: "index"
  end
  
  def search
    @Card.name = params[:name]
    render 'search'
  end

  #GET /cards/office
  def office
    @card = Card.new
    render 'office'
  end


  # GET /cards/new
  def new
    @card = Card.new
  end

  # GET /cards/1/edit
  def edit
  end

  # POST /cards
  # POST /cards.json
  def create
    @card = Card.new(card_params)

    respond_to do |format|
      if @card.save
        format.html { redirect_to @card, notice: 'Card was successfully created.' }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cards/1
  # PATCH/PUT /cards/1.json
  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to @card, notice: 'Card was successfully updated.' }
        format.json { render :show, status: :ok, location: @card }
      else
        format.html { render :edit }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.json
  def destroy
    @card.destroy
    respond_to do |format|
      format.html { redirect_to cards_url, notice: 'Card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def self.query(params)
    if params[:name].present? && params[:set].present? && params[:color].present?
      @Card = Card.where('name LIKE :name and release_set = :set and color = :color',
        {:name => "%#{params[:name]}%",
         :set => "#{params[:set]}",
         :color => "#{params[:color]}"})
    elsif params[:set].present? && params[:color].present?
      @Card = Card.where(:release_set => params[:set]).where(:color => params[:color])
    elsif params[:name].present? && params[:set].present?
      @Card = Card.where('name LIKE :name and release_set = :set',
      {:name => "%#{params[:name]}%",
       :set => "#{params[:set]}"
        })
    elsif params[:name].present? && params[:color].present?
      @Card = Card.where('name LIKE :name and color = :color',
      {:name =>"%#{params[:name]}%",
       :color => "#{params[:color]}"
        })
    elsif params[:set].present?
      @Card = Card.where(:release_set => params[:set])
    elsif !params[:name].present? && !params[:set].present? && !params[:color].present? 
      @Card = Card.all
    else
      @Card = Card.where(:color => params[:color])
    end
    @Card
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      if(params[:id].is_a? Integer)
        @card = Card.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_params
      params.require(:card).permit(:name, :id, :price, :set, :color)
    end
end

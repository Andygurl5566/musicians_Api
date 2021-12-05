class MusiciansController < ApplicationController
    # GET /musician  - will return all musicians

  def index
    musician = Musician.all
    render json: musician
  end

  
# GET /musician/:id - will return a particular musician matching the given id

  def show
    musician = Musician.find_by(id: params[:id])
    render json: musician
  end



# POST /musician - will create a new musician and enter it into the database

  def create
    a_musician = Musician.create(params.permit(:name, :genre, :birth_city))
    render json: a_musician
  end

  
# DESTROY /musician/:id - will delete a particular musician from the database
  def destroy
    musician = Musician.find_by(id: params[:id])
    musician.destroy
    render json: {}
  end
  

# UPDATE /musician/:id

  def update
    musician = Musician.find_by(id: params[:id])
    musician.update(params.permit(:name, :genre, :birth_city))
    render json: musician

  end
end

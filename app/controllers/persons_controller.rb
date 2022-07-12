class PersonsController < ApplicationController
  def new
  end

  def index
    @persons = Person.all
  end
  def show
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html {redirect_to @person}
        format.json {render :show}
        format.js
      else
        format.html {render :new}
        format.json {render json: !post.errors}
        format.js
      end
    end
    # @person.save
    # redirect_to @person
    # render plain: params[:person].inspect
  end

  private

    def person_params
      params.require(:person).permit(:firstname, :lastname, :username, :department)    
    end
end

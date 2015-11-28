class SignupsController < ApplicationController
  #def index
  #  @signups = Signup.all
  #end

  def new
    @signup = Signup.new
  end

  #def create
  #  @signup = Signup.new(signup_params)
  #  if @signup.save
  #    redirect_to '/thanks'
  #  else
  #    render 'new'
  #  end
  #end

  def thanks
  end

  def index
    render json: Note.all
  end

  # GET /notes/1.json
  def show
  end

  # POST /notes.json
  def create
    @signup = Signup.new(signup_params)

    if @signup.save
      render json: @signup, status: :ok
    else
      render json: @signup.errors, status: :unprocessable_entity
    end
  end

  private
  def signup_params
    params.require(:signup).permit(:email,:name)
  end

end

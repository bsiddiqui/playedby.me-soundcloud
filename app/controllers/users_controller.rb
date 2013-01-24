class UsersController < ApplicationController

  def new
    authenticate_user! 
  end


  def edit
  end

  # queries database for parties associated with user to display on their homepage
  def show
    # find all the parties hosted
    @parties_hosted = PartyProfile.find_all_by_host(current_user.id)
    if @parties_hosted.empty?
      flash.now[:alert] = "You have not thrown any parties. Start a party?"
    end

    # find all the parties attended
    # @parties_guest  = Guest.find_all_by_user_id(current_user.id)
    @parties_guest  = current_user.party_profiles
    puts @parties_guest
    puts "hello"

  end

  def index
    @user = current_user
  end

  # logs out the user
  def destroy
    destroy_session
    redirect_to "/login", :alert => "Signed Out" 
  end
  
  def update
  end
end
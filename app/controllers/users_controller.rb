class UsersController < ApplicationController


def new
  @user = User.new

end


def create
  user = User.create user_params
end



def show
end



def edit
end


def update
end


def destroy
end



private
# strong params, the doorman for the form fields
def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end


end # <!--class-->

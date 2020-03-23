class UserController < ApplicationController
  def login
  end

  def signup
    @user = User.new
  end

  def login_action

  end

  def new
    @user = User.new(image_name: "/user_image/default_user.jpg",
                     email: params[:email],
                     password: params[:password],
                     name: params[:user_name])
    if @user.save
      redirect_to("/user/#{@user.id}")
    else
      render("user/signup")
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])

    if params[:image]
      @user.image_name = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_image/#{@user.image_name}",image.read)
    end
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    if params[:bio]
      @user.bio = params[:bio]
    end
    if @user.save
      redirect_to("/user/#{@user.id}")
    else
      render("user/edit")
    end
  end

end

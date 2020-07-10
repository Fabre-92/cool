class WebprojectsController < ApplicationController

  def index
    @webprojects = Webproject.all.order("created_at DESC")
  end

  def new
    @webproject = Webproject.new
  end

  def create
    @webproject = Webproject.new(webproject_params)

    if @webproject.save
      redirect_to @webproject
    else
      render 'new'
    end
  end

  def show
    @webproject = Webproject.find(params[:id])
  end

  def update
    @webproject = Webproject.find(params[:id])

    if @webproject.update(webproject_params)
      redirect_to @webproject
    else
      render 'edit'
    end
  end

  def edit
    @webproject = Webproject.find(params[:id])
  end

  def destroy
    @webproject = Webproject.find(params[:id])
    @webproject.destroy

    redirect_to webprojects_path
  end

  private

  def webproject_params
    params.require(:webproject).permit(:name, :description)

  end

end

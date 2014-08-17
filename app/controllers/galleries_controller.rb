class GalleriesController < ApplicationController
  authorize_resource :page
  authorize_resource :gallery, :through => :page

  # Admin 
  def manage
    @galleries = Gallery.all
     
    respond_to do |format|
      format.html
    end
  end
  
  def index
    @galleries = Gallery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @galleries }
    end
  end

  def show
    @gallery = Gallery.find(params[:id])

    render "#{@gallery.skin.template}"
  end

  def new
    @gallery = Gallery.new

    1.times do
      figures = @gallery.figures.build
      figures.images.build
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gallery }
    end
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def create
    @gallery = Gallery.new(params[:gallery])

    respond_to do |format|
      if @gallery.save
        format.html { redirect_to galleries_url, notice: 'Gallery was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @gallery = Gallery.find(params[:id])

    respond_to do |format|
      if @gallery.update_attributes(params[:gallery])
        format.html { redirect_to galleries_url, notice: 'Gallery was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy

    respond_to do |format|
      format.html { redirect_to galleries_url }
    end
  end
end
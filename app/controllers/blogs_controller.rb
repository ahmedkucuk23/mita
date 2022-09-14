class BlogsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index , :show]
  before_action :set_blog, only: [ :edit, :update, :destroy ]

  def index
    @blogs = Blog.all
    @blog = policy_scope(Blog)
  end

  def show
    @blog = Blog.friendly.find(params[:id])
    authorize @blog
  end

  def new
    @blog = Blog.new
    authorize @blog
  end


  def create
    @blog = Blog.new(blog_params)
    @blog.user = current_user
    authorize @blog


    respond_to do |format|
      if @blog.save
        format.html { redirect_to blog_url(@blog), notice: "Blog was successfully created." }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    set_blog
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    set_blog
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to blog_url(@blog), notice: "Blog was successfully updated." }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    set_blog
    @blog.destroy

  end


  private

    def blog_params
      params.require(:blog).permit( :title, :body, :rich_body, :description1, :published, :published_at, photos: [])
    end

    def set_blog
      @blog = Blog.friendly.find(params[:id])
      authorize @blog
    end
end

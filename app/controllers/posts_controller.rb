class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    if params[:category_id]
      @posts = Post.searchByCategory(params[:category_id])
      category_name = Category.searchById(params[:category_id])
      @filter = "Posts in the \"#{category_name}\" category:"
    elsif params[:tag_id]
      @posts = Post.searchByTag(params[:tag_id])
      tag_name = Tag.searchById(params[:tag_id])
      @filter = "Posts tagged with \"#{tag_name}\":"
    else
      @posts = Post.all
      @example_posts = Post.order("RANDOM()").limit(4)
    end
    @categories = Category.all
    @tags = Tag.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @comments = @post.comments.order("created_at DESC").paginate(:page => params[:page], :per_page => 2)
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :subtitle, :post_body, :imageurl)
    end
end

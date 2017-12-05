class CommunityTagsController < ApplicationController
  before_action :set_community_tag, only: [:show, :edit, :update, :destroy]

  # GET /community_tags
  # GET /community_tags.json
  def index
    @community_tags = CommunityTag.all
  end

  # GET /community_tags/1
  # GET /community_tags/1.json
  def show
  end

  # GET /community_tags/new
  def new
    @community_tag = CommunityTag.new
  end

  # GET /community_tags/1/edit
  def edit
  end

  # POST /community_tags
  # POST /community_tags.json
  def create
    @community_tag = CommunityTag.new(community_tag_params)

    respond_to do |format|
      if @community_tag.save
        format.html { redirect_to @community_tag, notice: 'Community tag was successfully created.' }
        format.json { render :show, status: :created, location: @community_tag }
      else
        format.html { render :new }
        format.json { render json: @community_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_tags/1
  # PATCH/PUT /community_tags/1.json
  def update
    respond_to do |format|
      if @community_tag.update(community_tag_params)
        format.html { redirect_to @community_tag, notice: 'Community tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @community_tag }
      else
        format.html { render :edit }
        format.json { render json: @community_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_tags/1
  # DELETE /community_tags/1.json
  def destroy
    @community_tag.destroy
    respond_to do |format|
      format.html { redirect_to community_tags_url, notice: 'Community tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_tag
      @community_tag = CommunityTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_tag_params
      params.require(:community_tag).permit(:tag_id, :community_id)
    end
end

class ArtistBadgesController < ApplicationController
  before_action :set_artist_badge, only: [:show, :edit, :update, :destroy]

  # GET /artist_badges
  # GET /artist_badges.json
  def index
    @artist_badges = ArtistBadge.all
  end

  # GET /artist_badges/1
  # GET /artist_badges/1.json
  def show
  end

  # GET /artist_badges/new
  def new
    @artist_badge = ArtistBadge.new
  end

  # GET /artist_badges/1/edit
  def edit
  end

  # POST /artist_badges
  # POST /artist_badges.json
  def create
    @artist_badge = ArtistBadge.new(artist_badge_params)

    respond_to do |format|
      if @artist_badge.save
        format.html { redirect_to @artist_badge, notice: 'Artist badge was successfully created.' }
        format.json { render :show, status: :created, location: @artist_badge }
      else
        format.html { render :new }
        format.json { render json: @artist_badge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_badges/1
  # PATCH/PUT /artist_badges/1.json
  def update
    respond_to do |format|
      if @artist_badge.update(artist_badge_params)
        format.html { redirect_to @artist_badge, notice: 'Artist badge was successfully updated.' }
        format.json { render :show, status: :ok, location: @artist_badge }
      else
        format.html { render :edit }
        format.json { render json: @artist_badge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_badges/1
  # DELETE /artist_badges/1.json
  def destroy
    @artist_badge.destroy
    respond_to do |format|
      format.html { redirect_to artist_badges_url, notice: 'Artist badge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_badge
      @artist_badge = ArtistBadge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_badge_params
      params.require(:artist_badge).permit(:name, :description, :badge_image, :artist_id)
    end
end

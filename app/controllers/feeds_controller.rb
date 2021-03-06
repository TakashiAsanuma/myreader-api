class FeedsController < ApplicationController
  before_action :set_feed, only: [:show, :update, :destroy]

  swagger_controller :feeds, "Feed Management"

  swagger_api :index do
    summary "Fetches all Feed items"
    notes "This lists all the active feeds"
    consumes [ "application/json" ]
    response :ok, "Success", :Feed
    response :not_found
    response :internal_server_error
  end

  # GET /feeds
  def index
    @feeds = Feed.all

    render json: @feeds
  end

  # GET /feeds/1
  def show
    render json: @feed
  end

  # POST /feeds
  def create
    @feed = Feed.new(feed_params)

    if @feed.save
      render json: @feed, status: :created, location: @feed
    else
      render json: @feed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /feeds/1
  def update
    if @feed.update(feed_params)
      render json: @feed
    else
      render json: @feed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /feeds/1
  def destroy
    @feed.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed
      @feed = Feed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def feed_params
      params.fetch(:feed, {})
    end
end

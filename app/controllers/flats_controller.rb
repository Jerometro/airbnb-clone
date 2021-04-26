require "open-uri"

class FlatsController < ApplicationController
  before_action :fetch_api, only: [:index, :show]

  def index
    # ---> fetch_api
  end

  def show
    # 1. Fetch flat id from the params
    # 2. Get the matching flat from @flats
    # 3. Store it in an instance variable

    id = params[:id].to_i
    @flat = @flats.find { |flat| flat["id"] == id }
  end

  private

    def fetch_api
      url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
      @flats = JSON.parse(open(url).read)
    end
end

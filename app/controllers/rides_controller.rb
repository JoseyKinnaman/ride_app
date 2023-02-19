class RidesController < ApplicationController

  # GET /rides
  def index
    # scope it by driver
    # order it by rides in descending score order with scope
    @rides = driver.rides.by_score.paginate(page: pagination_page, per_page: 5)
    render json: @rides
  end

  private

    def driver
      Driver.find(params.require(:driver_id))
    end

    def pagination_page
      params.fetch(:page, 1).to_i
    end
end

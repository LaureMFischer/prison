class StatesController < ApplicationController
  def index
    # to get json
    # curl  -H "Accept: application/json" -H "Content-Type: application/json" localhost:3000

    @states = State.all

    respond_to do |format|
      format.html
      format.json {render json: @states, root: false }
    end
  end
end

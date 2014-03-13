class StatesController < ApplicationController
  def index
    # to get json
    # curl  -H "Accept: application/json" -H "Content-Type: application/json" localhost:3000

    states = State.all

    render json: states, root: false # Gets rid of the root state key at the top level

    # respond_to do |format|
    #   format.html
    #   format.json {render json: @states, root: false }
    # end
  end
end

class ApiController < ApplicationController
  def greetings
    @greetings = Greeting.order('RANDOM()').first
    render json: { greeting: @greetings.text }
  end
end

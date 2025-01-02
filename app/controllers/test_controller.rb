class TestController < ApplicationController
    def example
      render json: { message: "Hello from Rails!", status: "success" }
    end
end
  
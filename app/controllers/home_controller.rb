class HomeController < ApplicationController
  def square
    render({template:"omnicalc_templates/square"})
  end
end

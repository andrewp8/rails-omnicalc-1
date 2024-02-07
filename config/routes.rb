Rails.application.routes.draw do
  get("/", {controller:"square", action:"square"})
  get("/square/new", controller:"home", action:"square")
end

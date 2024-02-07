Rails.application.routes.draw do
  get("/", {controller:"home", action:"square_new"})
  get("/square/new", {controller:"home", action:"square_new"})
  get("/square/results", {controller:"home", action:"square_results"})
  
  get("/square_root/new", {controller:"home", action:"square_root_new"})
  get("/square_root/results", {controller:"home", action:"square_root_results"})
  
  get("/payment/new", {controller:"home", action:"payment_new"})
  get("/payment/results", {controller:"home", action:"payment_results"})
  
  get("/random/new", {controller:"home", action:"random_new"})
  get("/random/results", {controller:"home", action: "random_results"})
end

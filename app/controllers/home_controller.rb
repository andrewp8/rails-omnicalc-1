class HomeController < ApplicationController
  def square_new
    render({template:"omnicalc_templates/square_new"})
  end
  def square_results
    @number = params.fetch("number")
    @results = @number.to_f**2
    render({template:"omnicalc_templates/square_results"})
  end

  def square_root_new
    render({template:"omnicalc_templates/square_root_new"})
  end
  def square_root_results
    @number = params.fetch("number")
    @results = Math.sqrt(@number.to_f)
    render({template:"omnicalc_templates/square_root_results"})
  end

  def payment_new
    render({template:"omnicalc_templates/payment_new"})
  end
  def payment_results
    apr = params.fetch("user_apr").to_f
    @converted_apr = apr.to_fs(:percentage, {:precision => 4})

    years = params.fetch("user_years").to_f
    @converted_years = years.to_i
  
    pv = params.fetch("user_pv").to_f
    @converted_pv = pv.to_fs(:currency)
  
    r = (apr/12)/100
    n= years*12
  
    result = (r*pv)/(1-(1+r)**-n)
    @converted_result = result.to_fs(:currency)
    
    render({template:"omnicalc_templates/payment_results"})
  end

  def random_new
    render({template:"omnicalc_templates/random_new"})
  end
  def random_results
    @min = params.fetch("user_min")
    @max = params.fetch("user_max")
    @result = rand(@min.to_f..@max.to_f).round(17r)
    render({template:"omnicalc_templates/random_results"})
  end

end

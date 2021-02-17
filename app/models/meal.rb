class Meal < ApplicationRecord
  include HTTParty
  def nutritionix_query
    base_uri = 'https://trackapi.nutritionix.com/v2/natural/nutrients'

    query = { 
      "query"     => self.name,
      "timezone" => "US/Eastern"
    }
    headers = { 
      "x-app-id" => "0371e987",
      "x-app-key" => "a00007b3049c13397ad6efe5095e1874"
    }

    # self.class.post(
    HTTParty.post(
      base_uri, 
      :body => query,
      :headers => headers
    )
  end

  def calories
    total_calories = 0
    JSON.parse(self.nutritionix)['foods'].map{|food| total_calories += food['nf_calories'] }
    return total_calories.to_i
  end
end

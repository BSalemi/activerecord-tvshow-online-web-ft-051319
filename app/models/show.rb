class Show < ActiveRecord::Base

  def ActiveRecord::highest_rating
    Show.maximum(:rating)
  end

end

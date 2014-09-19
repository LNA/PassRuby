class MovieFinder # What happens if I want to add in another day of the week? Is this good or bad? 
  def find_movie (day_of_week)
    if day_of_week    == "Sunday"
      "Comedy"
    elsif day_of_week == "Monday"
      "Family"
    elsif day_of_week == "Tuesday"
      "Horror"
    elsif day_of_week == "Wednesday"
      "Drama"
    end
  end

  def find_movie_refactored(day_of_week)
  end

  def get_title_and_cost(genera)
    if genera == "Kids"
      cost = 3.00
      movie = "The Princess Bride"
    end
    [movie, cost]
  end

  # the below methods are private because they will only be used in this class.  The above methods are public.
  # Private methods are not tested. 

  private

  # Fill in some private methods that will remove the hard coded values from the find_movie method.
  # They don't need to be tested.
end

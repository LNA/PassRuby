class MovieFinder # What happens if I want to add in another day of the week? Is this good or bad?
  def find_movie (day_of_week)
    if day_of_week == "Sunday"
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
end

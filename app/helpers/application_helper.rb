module ApplicationHelper
  def date_format(datetime)
    datetime.strftime("%d %b. %Y")
  end
end

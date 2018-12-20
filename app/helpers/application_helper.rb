module ApplicationHelper
  def flash_class(level)
    case level
      when 'notice' then "alert alert-info"
      when 'success' then "alert alert-success"
      when 'error' then "alert alert-danger"
      when 'alert' then "alert alert-warning"
    end
  end

  def sortable(title, column = nil)
    column ||= title.underscore

    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == 'asc' ? 'desc' : 'asc'

    link_to({sort: column, direction: direction}, {class: css_class}) do
      if column == sort_column
        sort_direction == 'desc' ? fa_icon("sort-down", text: title) : fa_icon('sort-up', text: title)
      else
        title
      end
    end
  end
end

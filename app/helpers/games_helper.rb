module GamesHelper
  def sort_column
    Game.column_names.include?(params[:sort]) ? params[:sort] : 'created_at'
  end

  def sort_direction
    ['asc', 'desc'].include?(params[:direction]) ? params[:direction] : 'asc'
  end
end

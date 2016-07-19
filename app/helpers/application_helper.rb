module ApplicationHelper
  def sortable(column, title = nil)
    direction = if column == params[:sort] && params[:direction] == "asc"
                  "desc"
                else 
                  "asc"
                end 
                
    link_to column.titleize, sort: column, direction: direction  
  end 
end



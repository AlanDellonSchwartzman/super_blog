module ApplicationHelper
    
    def commentary_new (commentary, post)
       render partial: "commentaries/form",
              locals: {commentary: commentary, post: post}
    end
    
    
    def no_date_time (date)
        date.strftime(" %d/%m/%Y ")
    end
    
    
end

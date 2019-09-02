module ApplicationHelper
    
    def commentary_new (user, post)
       render partial: "commentaries/form",
              locals: {user: user, post: post}
    end
    
    
    
    
    
end

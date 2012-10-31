module ApplicationHelper
  #Returns the title bar on a per-page basis
    def full_title(page_title)
        
        if Rails.env.development?
            base_title = "Test"
        else
            base_title = "Pigeon Post"
        end
        if page_title.empty?
            base_title
        else
            "#{base_title} | #{page_title}"
        end
    end
end

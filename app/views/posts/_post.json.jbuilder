json.extract! post, :id, :title, :date, :description, :author, :commentary, :img_post, :created_at, :updated_at
json.url post_url(post, format: :json)

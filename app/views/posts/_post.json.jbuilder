json.extract! post, :id, :title, :body, :img_post, :user_id, :commentary_id, :created_at, :updated_at
json.url post_url(post, format: :json)

json.array!(@users) do |user|
  json.extract! user, :id, :user_name, :email, :first_name, :last_name, :password_digest, :phone_number, :profile_pic_url, :description, :timestamps, :city, :state, :address, :zip, :type
  json.url user_url(user, format: :json)
end

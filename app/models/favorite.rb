class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :favorite, class_name: "Micropost" #お気に入り
end

class User::Otaku < User
  has_one :anime_list, dependent: :destroy
end

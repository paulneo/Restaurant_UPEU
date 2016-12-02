class Food < ApplicationRecord
  mount_uploader :imagen, FoodsUploader
end

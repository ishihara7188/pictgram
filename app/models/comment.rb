class Comment < ApplicationRecord

  #コメント機能の関連付け
  belongs_to :user
  belongs_to :topic

end

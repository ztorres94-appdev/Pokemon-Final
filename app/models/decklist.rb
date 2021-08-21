# == Schema Information
#
# Table name: decklists
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  card_id    :string
#  user_id    :integer
#
class Decklist < ApplicationRecord


#belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })

#belongs_to(:card, { :required => true, :class_name => "Card", :foreign_key => "card_id" })

  
end

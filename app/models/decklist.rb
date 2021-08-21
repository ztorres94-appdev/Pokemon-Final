# == Schema Information
#
# Table name: decklists
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  card_id    :integer
#  user_id    :integer      
#
class Decklist < ApplicationRecord

  
end

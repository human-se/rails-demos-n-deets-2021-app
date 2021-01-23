# == Schema Information
#
# Table name: cars
#
#  id         :bigint           not null, primary key
#  color      :string
#  make       :string
#  model      :string
#  price      :decimal(, )
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Car < ApplicationRecord
end

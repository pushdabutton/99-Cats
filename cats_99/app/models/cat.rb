# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'date'
require 'action_view'
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    COLORS = %w(white black grey brown orange calico)
    validates :sex, inclusion: {in: %w(m f), message: "%(value) is not a valid sex" }
    validates :color, inclusion: {in: COLORS, message: "%cats aren't (value)" }

    has_many :cat_rental_requests,
        primary_key: :id,
        foreign_key: :cat_id,
        class_name: :CatRentalRequest,
        dependent: :destroy

    def self.colors
        COLORS 
    end

    def age
        # date_now = DateTime.now.to_date
        # date_now.year - @birth_date.year 
        time_ago_in_words(birth_date)
    end


end

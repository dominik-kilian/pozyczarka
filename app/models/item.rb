# frozen_string_literal: true

# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  active     :boolean
#  borrowed   :boolean
#  item_type  :integer          default("other"), not null
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3}

  enum item_type: %i[fantasy sci-fi criminal horror other ]

  scope :active, -> {where(active: true)}
  scope :not_active, -> {where(active: false )}
  scope :borrowed, -> {where(borrowed: true)}
  scope :not_borrowed, -> {where(borrowed: false)}
end

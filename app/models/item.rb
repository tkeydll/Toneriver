#encoding: utf-8
class Item < ActiveRecord::Base
  has_many :likes
  has_many :comments
  has_many :order_details
  validates :quantity, numericality: {
  	greater_than_or_equal_to: 0,
  	message: "が不足しているため、購入手続きを完了できません"
  }
end

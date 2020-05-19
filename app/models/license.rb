class License < ApplicationRecord
  belongs_to :user, optional: true

  validates :start_year, presence: true
  validates :start_month, presence: true
  validates :start_date, presence: true
  validates :end_year, presence: true
  validates :end_month, presence: true
  validates :start_date, presence: true

  enum category: {
    道路占用:1, 普通財産:2, 河川占用:3
  }
  
  enum type_name: {
    工事（変更）:1, 期間更新:2
  }

  enum rank: {
    配電架空:1, 配電地中:2, 送電架空:3, 送電地中:4
  }


  # enum government_user_id: {
  #   世田谷区道路公園課:1, 文京区道路課:2, 東京都都市整備局管理係:3, 国土交通省東京航空局施設課:4
  # }
end
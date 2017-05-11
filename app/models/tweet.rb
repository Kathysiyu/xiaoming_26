class Tweet < ActiveRecord::Base
belongs_to :user
has_many :replies              #repilesテーブルとのアソシエーション

def invalid?
    (start_date && end_date && place && people && text).blank?
  end
end

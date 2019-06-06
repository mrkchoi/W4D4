# == Schema Information
#
# Table name: albums
#
#  id           :bigint           not null, primary key
#  band_id      :string           not null
#  title        :string           not null
#  year         :integer          not null
#  studio_album :string           default("t"), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Album < ApplicationRecord
  validates :band_id, :title, :year, :studio_album, presence: true

  belongs_to :band,
    foreign_key: :band_id,
    class_name: :Band

end

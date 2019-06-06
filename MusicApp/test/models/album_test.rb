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

require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: artworks
#
#  id        :bigint           not null, primary key
#  title     :string           not null
#  artist_id :integer          not null
#  image_url :string           not null
#
class Artwork < ApplicationRecord

    belongs_to :artist

    has_many :artwork_shares,
        dependent: :destroy

    has_many :viewers,
        through: :artwork_shares,
        source: :viewer

end

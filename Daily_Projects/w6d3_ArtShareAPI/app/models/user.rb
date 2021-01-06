# == Schema Information
#
# Table name: users
#
#  id       :bigint           not null, primary key
#  username :string           not null
#
class User < ApplicationRecord

    has_many :artworks

    has_many :artwork_shares,
        dependent: :destroy

    has_many :viewed_artworks,
        through: :artwork_shares,
        source: :artwork

end

class User < ApplicationRecord
  has_many :game_sessions
end

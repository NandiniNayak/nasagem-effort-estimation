class Trainer < ApplicationRecord
  # has_and_belongs_to_many :workshops , :join_table =>  "trainers_workshops"
  has_many :trainer_workshops
  has_many :workshops, through: :trainer_workshops
end

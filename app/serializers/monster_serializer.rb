class MonsterSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :exp_to_next_level, :power, :max_hp, :defense
end

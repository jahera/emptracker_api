class RoomSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :is_private

  # has_one :user
end
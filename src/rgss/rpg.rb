require 'oj'

module RPG ; end

class RPG::ObjectBase ; include Oj::Hashable; end
class RPG::Map < RPG::ObjectBase ; end
class RPG::Map::Encounter < RPG::ObjectBase ; end
class RPG::MapInfo < RPG::ObjectBase ; end
class RPG::Event < RPG::ObjectBase ; end
class RPG::Event::Page < RPG::ObjectBase ; end
class RPG::Event::Page::Condition < RPG::ObjectBase ; end
class RPG::Event::Page::Graphic < RPG::ObjectBase ; end
class RPG::EventCommand < RPG::ObjectBase ; end
class RPG::MoveRoute < RPG::ObjectBase ; end
class RPG::MoveCommand < RPG::ObjectBase ; end
class RPG::BaseItem < RPG::ObjectBase ; end
class RPG::Actor < RPG::BaseItem ; end
class RPG::Class < RPG::BaseItem ; end
class RPG::Class::Learning < RPG::ObjectBase ; end
class RPG::UsableItem < RPG::BaseItem ; end
class RPG::Skill < RPG::UsableItem ; end
class RPG::Item < RPG::UsableItem ; end
class RPG::EquipItem < RPG::BaseItem ; end
class RPG::Weapon < RPG::EquipItem ; end
class RPG::Armor < RPG::EquipItem ; end
class RPG::Enemy < RPG::BaseItem ; end
class RPG::Enemy::Action < RPG::ObjectBase ; end
class RPG::Troop < RPG::ObjectBase ; end
class RPG::Troop::Member < RPG::ObjectBase ; end
class RPG::Troop::Page < RPG::ObjectBase ; end
class RPG::Troop::Page::Condition < RPG::ObjectBase ; end
class RPG::State < RPG::ObjectBase ; end
class RPG::Animation < RPG::ObjectBase ; end
class RPG::Animation::Frame < RPG::ObjectBase ; end
class RPG::Animation::Timing < RPG::ObjectBase ; end
class RPG::Tileset < RPG::ObjectBase ; end
class RPG::CommonEvent < RPG::ObjectBase ; end
class RPG::System < RPG::ObjectBase ; end
class RPG::System::Words < RPG::ObjectBase ; end
class RPG::System::TestBattler < RPG::ObjectBase ; end
class RPG::AudioFile < RPG::ObjectBase ; end

# 以下VXAce要素
class RPG::BGM < RPG::AudioFile ; end
class RPG::BGS < RPG::AudioFile ; end
class RPG::SE < RPG::AudioFile ; end
class RPG::ME < RPG::AudioFile ; end
class RPG::BaseItem::Feature < RPG::ObjectBase ; end
class RPG::Enemy::DropItem < RPG::ObjectBase ; end
class RPG::UsableItem::Effect < RPG::ObjectBase ; end
class RPG::UsableItem::Damage < RPG::ObjectBase ; end
class RPG::System::Vehicle < RPG::ObjectBase ; end
class RPG::System::Terms < RPG::ObjectBase ; end
class RPG::System::TestBattler < RPG::ObjectBase ; end


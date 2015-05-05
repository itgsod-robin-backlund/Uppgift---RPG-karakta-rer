def create_character(first_name:, last_name:, klass:, hitpoints:, weapon:)

  character = { first_name: first_name, last_name: last_name, klass: klass, hitpoints: hitpoints, weapon: weapon}
  return character

end

def describe_character(character:)
  if character[:hitpoints] >= 100
    hp = "quite healthy"
  elsif character[:hitpoints] >= 75
    hp = "lightly wounded"
  elsif character[:hitpoints] >= 50
    hp = "moderately wounded"
  elsif character[:hitpoints] >= 25
    hp = "badly wounded"
  elsif character[:hitpoints] > 0
    hp = "close to death"
  elsif character[:hitpoints] <= 0
    hp = "dead"
  end

  if character[:hitpoints] > 0
    return "#{character[:first_name]} #{character[:last_name]} the #{character[:klass]} wields a #{character[:weapon]}\n #{character[:first_name]} appears #{hp}"
  else #Detta är om hitpoints är under 0 och karaktären är död
    return "#{character[:first_name]} #{character[:last_name]} the #{character[:klass]} is #{hp}.\n Beside the corpse lies a #{character[:weapon]}"
  end
end

def hit_character(character:, damage:)
  character[:hitpoints] = character[:hitpoints] - damage
  return character
end
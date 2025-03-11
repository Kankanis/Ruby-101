instrument_section = {
  "cello" => "string",
  "clarinet" => "woodwind",
  "drum" => "percussion",
  "oboe" => "woodwind",
  "trumpet" => "brass",
  "violin" => "string"
}

puts instrument_section["oboe"]
puts instrument_section["cello"]
puts instrument_section["bassoon"]

histogram = Hash.new(0)
puts histogram['ruby']
histogram['ruby'] = histogram['ruby'] + 1
puts histogram['ruby']

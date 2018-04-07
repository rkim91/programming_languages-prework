def reformat_languages(languages)
  newhash = {}
  repeated_program = []
  languages.each do |hash, language|
    arr = []
    arr << hash
    repeated_program << hash
    language.each do |program, type|
      if newhash.has_key?(program)
        newhash[program][:style] = repeated_program
      else
        newhash[program] = type
        newhash[program][:style] = arr
      end
    end
  end
  return newhash
end

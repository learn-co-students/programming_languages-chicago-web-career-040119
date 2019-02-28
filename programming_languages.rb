def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, value|
    languages[style].each do |language, attribute|
      languages[style][language].each do |type, type_value|
        if new_hash[language]
          new_hash[language][:style] << style
        else
          new_hash[language] = {type => type_value, :style => [style]}
        end
      end
    end
  end
  new_hash
end

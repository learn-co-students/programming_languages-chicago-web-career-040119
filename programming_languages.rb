def reformat_languages(languages)
  new_hash = {}
  languages.each do |language_details, language|
    language.each do |language, attributes|
      attributes.each do |attribute, attribute_value|
        if language == :javascript
          new_hash[language] = {
            :type => attribute_value,
            :style => [:oo, :functional]
          }
        else
          new_hash[language] = {
            :type => attribute_value,
            :style => [language_details]
          }
        end
      end
    end
  end
  new_hash
end

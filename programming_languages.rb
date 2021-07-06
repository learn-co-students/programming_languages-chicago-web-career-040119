def reformat_languages(languages)
  new_hash = {}
   languages.each do |style, description|
    description.each do |language_name, type|
      if new_hash.has_key?(language_name)
        new_hash[language_name][:style] << style
      else
        new_hash[language_name] = type
        new_hash[language_name][:style] = [style]
      end
    end
  end
   new_hash  
 end
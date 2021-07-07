


def reformat_languages(languages)
new_hash = {}
languages.each do |oo_functional, language_hash|

  language_hash.each do |language, attribute_hash|

    attribute_hash.each do |attribute, value|

     if new_hash[language].nil?

        new_hash[language] = {}
      end
      if new_hash[language][attribute].nil?
          new_hash[language][attribute] = value
        end
     new_hash[language][:style] = []
      if languages[:oo].include?(language) && languages[:functional].include?(language)
        new_hash[language][:style] << :oo
        new_hash[language][:style] << :functional
      else
        new_hash[language][:style] << oo_functional
      end
      #new_hash[:javascript][:style] << :oo


    end
  end
end
  # your code here
  new_hash

end

require "pry"

def lang_hash
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
end

def reformat_languages(languages)
  new_hash = {}

  languages.each { |type, langz|
    langz.each { |one_lang, valz|
      #binding.pry
      if new_hash.has_key?(one_lang)
        x = new_hash[one_lang][:style]
        x << type
        new_hash[one_lang][:style] = x
        #binding.pry
      else
        new_hash[one_lang] = valz
        new_hash[one_lang][:style] = []
        new_hash[one_lang][:style] << type
      end
      # if new_hash[one_lang].has_key?(:style)
      #   x = new_hash[one_lang][:style]
      #   x << type
      #   new_hash[one_lang][:style] = x
      #   binding.pry
      # else
      #   new_hash[one_lang][:style] = []
      #   new_hash[one_lang][:style] << type
      #   #binding.pry
      # end
      #binding.pry
    }
  }
  # binding.pry
  new_hash
end

#reformat_languages(lang_hash)

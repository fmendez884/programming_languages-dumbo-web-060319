def reformat_languages(languages)
  hash = {}
    languages.collect do |style, language|
      language.collect do |name, type|
        hash[name] ||= type
        hash[name][:style] = []
        hash[name][:style] << style
      end
    end
  hash
end
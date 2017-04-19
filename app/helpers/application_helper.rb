module ApplicationHelper

  def autosuggest_aggregate(response, fields, query)
    words = { }

    fields.each do |field|
      response.send(field).to_a.each do |word|
        if word.options.length > 0
          new_word = false
          unless words.include? word.text
            words[word.text] = { text: '', score: nil, freq: nil }
            new_word = true
          end
          word.options.each do |option|
            if new_word or words[word.text][:score] * words[word.text][:freq] < option[:score] * option[:freq]
              words[word.text][:text] = option[:text]
              words[word.text][:score] = option[:score]
              words[word.text][:freq] = option[:freq]
            end
          end
        end
      end
    end

    new_query = query.dup

    words.each do |word, suggestion|
      if suggestion[:score] > 0.65
        new_query[word] = suggestion[:text]
      end
    end

    return new_query unless new_query == query
    false
  end
end

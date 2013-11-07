class Contact < ActiveRecord::Base

  include AlgoliaSearch
  algoliasearch per_environment: true do
    attributesToIndex [:name, :email, :company] # order matters, used by the ranking
    customRanking ['asc(name)'] # hit with same relevancy are sorted by name (ascending)
    queryType 'prefixAll' # prefix query on all words
  end

end

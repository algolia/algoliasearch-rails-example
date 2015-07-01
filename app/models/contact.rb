class Contact < ActiveRecord::Base

  include AlgoliaSearch
  algoliasearch per_environment: true, enqueue: true do
    attributesToIndex [:name, :email, :company, :city, :county, 'unordered(address)',
      :state, :zip, :phone, :fax, 'unordered(website)'] # order matters, used by the ranking
    attributesForFaceting [:city, :company] # use these attributes for faceting
    customRanking ['desc(followers)'] # nb_followers reflect the record popularity
    queryType 'prefixAll' # prefix query on all words
  end

end

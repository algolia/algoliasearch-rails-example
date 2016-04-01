class Contact < ActiveRecord::Base

  include AlgoliaSearch
  algoliasearch per_environment: true do
    attributesToIndex ['name', 'unordered(email)', 'company']
    attributesForFaceting ['company']
  end

end

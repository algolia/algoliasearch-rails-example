class SearchController < ApplicationController

  def index
    @q = params['contact'] && params['contact']['q']
    return if @q.blank?

    @hits = Contact.search(@q, { hitsPerPage: 5, page: (params['page'] || 1) })
  end

end

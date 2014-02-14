AlgoliasearchRailsExample::Application.routes.draw do
  match "/backend-search" => 'search#index', via: [:post, :get], as: :backend_search
  root :to => 'visitors#new'
end

class Path < ApplicationRecord
  include AlgoliaSearch
  algoliasearch(
    id: :algolia_id,
    index_name: 'my_new_index',
    enqueue: :trigger_algolia_worker
  ) do
    attribute :title, :description
  end

  def self.trigger_algolia_worker(path, remove)
    puts "trigger_algolia_worker"
  end

  def algolia_id
    "item#{self.id}"
  end

end

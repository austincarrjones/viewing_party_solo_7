class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  ## This below is only for searching the db. The search I want to perform is via the API so I'll need to do something different.
  # def self.search(search_params)
  #   where("name ILIKE ?", "%#{search_params}%")
  # end
end

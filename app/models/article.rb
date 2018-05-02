class Article < ApplicationRecord
# With relationships set, make sure that title and content are 
# required fields and set up two scopes: alphabetical (which orders the records alphabetically by title) 
# and active (which only returns active articles). Have a TA look over your model code before proceeding 
# so you know the model is correct. 
    belongs_to :category
    validates_presence_of :title, :content

    scope :alphabetically, --> { order('title') }
    scope :active, --> { where('active = ?', true) }

end

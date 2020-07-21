class Author < ActiveRecord::Base
    include ActiveModel::Validations
    validates(:name, { :length => { :minimum => 2 } })
    validates :email, uniqueness: true
end

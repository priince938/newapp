class Company < ApplicationRecord
    validates :name,:website,:domain,:address ,presence: true ,uniqueness: { case_sensitive: true }
    private
    def normalize_name
        self.name = name.titleize
    end
end

class Role < ApplicationRecord
    validates :name, presence: true ,uniqueness: { case_sensitive: true }
    belongs_to :employee
    private
    def normalize_name
        self.name = name.titleize
    end
end

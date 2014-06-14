class Patient < ActiveRecord::Base

  validates :first_name, :last_name, :status, :location, presence: true
  validates :status, :inclusion => ["Initial", "Referred", "Treatment", "Closed"]
  validates :gender, :inclusion => ["not available", "male", "female"]
  belongs_to :location

  scope :onTreatment, -> { where status: "treatment" }

  def mrn
    "MR<" + ("%06d" % self.id) + ">"
  end
end

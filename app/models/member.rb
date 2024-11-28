class Member < ApplicationRecord
  enum sex: {
    male: "m",
    female: "f"
  }

  enum scholarship: {
    fundamental_incomplete: "fi",
    fundamental_complete: "fc",
    medium_incomplete: "mi",
    medium_complete: "mc",
    technician_incomplete: "ti",
    technician_complete: "tc",
    superior_incomplete: "si",
    superior_complete: "sc"
  }
end

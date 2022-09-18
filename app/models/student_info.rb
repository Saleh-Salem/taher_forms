class StudentInfo < ApplicationRecord
    enum :geneder, { male: 1, female: 2 }
    enum :matrial_status, { married: 1, single: 2, divorced: 3, widowed: 4 }
end

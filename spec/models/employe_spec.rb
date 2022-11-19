# == Schema Information
#
# Table name: employes
#
#  id         :integer          not null, primary key
#  integer    :string
#  name       :string
#  role       :string
#  string     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Employe, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

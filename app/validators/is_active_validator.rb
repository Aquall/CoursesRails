# frozen_string_literal: true

class IsActiveValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /^[а-яА-Яa-zA-Z0-9]+$/
      record.errors.add attribute, (options[:message] || "must be true or false")
    end
  end
end

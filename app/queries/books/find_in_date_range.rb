# frozen_string_literal: true

module Books
  class FindInDateRange
    def self.call(params)
      Book.where('created_at >= :start_date AND created_at <= :end_date',
                 { start_date: params[:start_date], end_date: params[:end_date] })
    end
  end
end

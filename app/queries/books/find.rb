module Books
    class Find
        def oldest
        end

        def by_year(year)
            Book.where(year: year)
        end

        def first_by_year(year)
            Book.find_by(year: year)
        end

        def first_by_year_old_syntaxys(year)
            Book.find_by("year=?", year)
        end

        def print_all_books
            Book.all.each{|book| p book}
        end

        def print_all_with_optimization
            Book.find_each(batch_size: 5) do |book|
                p book
            end
        end

        def in_date_range(params)
            Book.where("created_at >= :start_date AND created_at <= :end_date",
            { start_date: params[:start_date], end_date: params[:end_date] })
        end
        
        def book_distinct
            Book.distinct.count(:name)
        end

        def book_quantity_lower_avg
            Book.where(quantity:0..Book.average(:quantity))
        end

        def book_with_max_quantity
            Book.order(quantity: :desc).limit(1)
        end

        
    end
end
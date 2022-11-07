module Subscriptions
    class Find
        def in_date_range1(params)
            Subscription.where("created_at >= :start_date AND created_at <= :end_date",
            { start: params[:start_date], end_date: params[:end_date] })
        end

        def in_date_range(params)
            Subscription.where("created_at >= ? AND created_at <= ?", params[:start_date], params[:end_date])
        end

        def count_statussubscription
            Subscription.distinct.where("is_active = ?", true).count
        end

        def count_unique_books
            Subscription.where("is_active = ?", true).count("DISTINCT book_id")
        end

        def most_book_subscriber
            Subscription.group(:subscriber_id).count.max_by{|k,v| v}.first
        end

        select subscriber_id, max(total) from (select subscriber_id, count(book_id) as total from subscriptions group by(subscriber_id));
    end
end
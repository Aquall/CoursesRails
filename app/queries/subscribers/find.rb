module Subscribers
    class Find
        def count_the_same_sub(name)
            Subscriber.group(:name).count
        end

        def subscribers_with_the_same_name
            Subscriber.group(:name).having("count(name) = ?", 6)
        end

        def select_sub
            max_value_pattern =  "select max(total) as max_value from ( 
                                select subscriber_id, count(*) as total from subscriptions
                                group by subscriber_id)"
            results = ActiveRecord::Base.connection.execute(max_value_pattern)
            p results
            pattern1 = "select subscriber_id, count(*) as total from subscriptions
            group by subscriber_id having total = #{results.first['max_value']}"
            ActiveRecord::Base.connection.execute(pattern1)
        end
    end
end
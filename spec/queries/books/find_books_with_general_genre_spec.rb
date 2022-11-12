# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Books::FIndBooksWithGeneralGenre do
  before do
    #@subscriber = create(:subscriber)
    #create_list(:subscription, 10, subscriber: @subscriber)
    #create_list(:subscriber_with_subscriptions, 10, subscriptions_count: 10)
    create_list(:books_with_genre, 5, genres_count 1)
  end

  context '#call' do
    it do
      expect(described_class.call).to eq()
    end
  end
end
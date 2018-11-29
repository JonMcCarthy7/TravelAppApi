# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :trips do
        resources :memories, path: 'trip_memories'
      end
    end
  end
end

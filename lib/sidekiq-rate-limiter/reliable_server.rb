require 'sidekiq/pro/reliable_fetch'
require 'sidekiq-rate-limiter/version'
require 'sidekiq-rate-limiter/fetch'

Sidekiq.configure_server do |config|
  Sidekiq.options[:fetch] = Sidekiq::RateLimiter::ReliableFetch
end

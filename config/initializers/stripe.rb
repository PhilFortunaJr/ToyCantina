if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_5K9e8KMaFciDTVRxJb2xotGe008lZTk6HI',
    secret_key: 'sk_test_cTbHzemXxEthycmy4OlUojdT00aK3ZKm1f'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]

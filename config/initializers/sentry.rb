if Rails.env.production?
  Raven.configure do |config|
    config.dsn = 'https://6780bf45e11640a583271306fc019d6f:a08aeb71461d4ee5aec98dbd3d30dc9a@sentry.io/257492'
  end
end
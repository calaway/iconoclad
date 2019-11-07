Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'TUgXzCehNnaZ3GBhm01xLzI1g3oUejdR',
    ENV.fetch('AUTH0_CLIENT_SECRET'),
    'iconoclad.auth0.com',
    callback_path: '/auth/auth0/callback',
    authorize_params: {
      scope: 'openid email profile'
    }
  )
end

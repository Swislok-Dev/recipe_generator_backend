if Rails.env === 'production'
  Rails.applicaiton.config.session_store :cookie_store, 
    key: '_phase_5_project_frontend', 
    domain: 'phase_5_project_backend'
else
  Rails.application.config.session_store :cookie_store, 
    key: '_phase_5_project_frontend'

end
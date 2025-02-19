Rails.application.routes.draw do
  get('/', { controller: 'misc', action: 'homepage' })

  # Static routes for youngest and eldest must come before the dynamic ID route
  get('/directors/youngest', { controller: 'directors', action: 'youngest' })
  get('/directors/eldest', { controller: 'directors', action: 'eldest' })

  # Dynamic route for specific director
  get('/directors/:id', { controller: 'directors', action: 'show' })

  get('/directors', { controller: 'directors', action: 'index' })

  get('/movies', { controller: 'movies', action: 'index' })
  get('/movies/:id', { controller: 'movies', action: 'show' })

  get('/actors', { controller: 'actors', action: 'index' })
  get('/actors/:id', { controller: 'actors', action: 'show' })
end

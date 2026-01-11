Rails.application.config.session_store :redis_store,
                                       servers: %w[
                                         redis://localhost:15531/0/session
                                       ],
                                       key: "_apples_app_session"

Rails.application.routes.draw do
  root to: 'coaching#ask'

  get 'ask', to: 'coaching#ask'
  get 'answer', to: 'coaching#answer'

  get 'answer/:query', to: 'coaching#answer'
  get 'ask/:query', to: 'coaching#ask'
end

Qhord::Application.routes.draw do
  get 'chord/:root/:type/:voicing' => 'chords#voicing', :as => :chord_voicing
  root to: 'pages#home'
end

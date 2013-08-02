Qhord::Application.routes.draw do
  get 'songs' => 'songs#book', :as => :song_book
  get 'chords' => 'chords#library', :as => :chord_library
  get 'chord/:root' => 'chords#root', :as => :chord_root_note
  get 'chord/:root/:type/:voicing' => 'chords#voicing', :as => :chord_voicing
  root to: 'pages#home'
end

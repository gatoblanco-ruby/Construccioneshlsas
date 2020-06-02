Rails.application.routes.draw do
  resources :payrolls
  devise_for :administrators
  devise_for :fellows
  resources :fellows
  resources :administrators
  root 'welcome#index'
  #Botones del head
  get 'quienessomos'  => 'nosotros#quienessomos'
  get 'administrador'  => 'administrador#administrador'
  get 'contacto'  => 'contacto#contacto'
  get 'servicio'  => 'servicios#servicio'
  get 'proyectos'  => 'proyecto#proyectos'
  get 'perfil'  => 'perfil#perfil'
  #ALBUM de boton proyectos
  get 'lagartos'  => 'largartos#lagartos'
  get 'casadelacultura'  => 'cultura#casadelacultura'
  get 'palacio'  => 'palacio#palacio'
  get 'convento'  => 'convento#convento'
  get 'bodega'  => 'bodega#bodega'
  get 'puente'  => 'puente#puente'
  
end

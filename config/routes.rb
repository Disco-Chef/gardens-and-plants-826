Rails.application.routes.draw do
  resources :gardens, only: %i[index show] do
    resources :plants, only: %i[new create]
  end
  resources :plants, only: [:destroy] do
    resources :plant_tags, only: [:new, :create]
  end
end

# PlantTag                FORM                                 Submit Form
# - plant (URL=> GET /plants/:plant_id/plant_tag/new), POST /plants/:plant_id/plant_tags

# - tag (FORM)

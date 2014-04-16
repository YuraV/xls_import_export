class ModelsService
  class << self
    def get_models
      Rails.application.eager_load!
      models =  ActiveRecord::Base.descendants.map(&:name)
      options_for_select = models.collect {|m| [m,m]}
      options_for_select
    end
  end
end

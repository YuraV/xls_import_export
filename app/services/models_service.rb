class ModelsService
  class << self
    def get_models
      Rails.application.eager_load!
      models =  ActiveRecord::Base.descendants.map(&:name)
      models
    end

    def prepare_models_for_select
      get_models.collect {|m| [m,m]}
    end

    def models_delete_all
      get_models.collect {|m| constantize_models_name(m).delete_all}
    end

    def constantize_models_name(model)
      model.constantize
    end

    def model_delete_all(mode)
      model.delete_all
    end

  end
end

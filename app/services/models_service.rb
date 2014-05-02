class ModelsService
  class << self
    def get_models
      Rails.application.eager_load!
      models =  ActiveRecord::Base.descendants.map(&:name)
      models.delete_if {|m| m == "Person"}
    end

    def populate_person
      arr = []
      records = []
      get_models.each do |model|
        arr << model.all.map(&:initials)
      end
      arr.each {|record| records  << Person.new(initials: record)}
      Person.import records
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
  end
end

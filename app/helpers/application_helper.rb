module ApplicationHelper
  def map_all_model_class_names
    Rails.application.eager_load!
    ActiveRecord::Base.send :subclasses
    models = ActiveRecord::Base.send(:subclasses).map(&:name)

    models
  end
end

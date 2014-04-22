class AkademVidpustka < ActiveRecord::Base
  attr_accessible :data_pochatky_akadem_vidpystku, :data_zavershenja_akadem_vidpystku, :faculty, :initials, :kyrs, :nomer_data_nakazy, :pruchuna_akadem_vidpystku, :study_type
end

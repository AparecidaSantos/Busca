class Veiculo < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :filial
end

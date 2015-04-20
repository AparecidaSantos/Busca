require 'rails_helper'

RSpec.describe "veiculos/show", :type => :view do
  before(:each) do
    @veiculo = assign(:veiculo, Veiculo.create!(
      :empresa => nil,
      :filial => nil,
      :placa => "Placa",
      :ano => "Ano",
      :numero => "Numero",
      :renavam => "Renavam"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Placa/)
    expect(rendered).to match(/Ano/)
    expect(rendered).to match(/Numero/)
    expect(rendered).to match(/Renavam/)
  end
end

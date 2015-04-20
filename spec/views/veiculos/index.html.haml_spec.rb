require 'rails_helper'

RSpec.describe "veiculos/index", :type => :view do
  before(:each) do
    assign(:veiculos, [
      Veiculo.create!(
        :empresa => nil,
        :filial => nil,
        :placa => "Placa",
        :ano => "Ano",
        :numero => "Numero",
        :renavam => "Renavam"
      ),
      Veiculo.create!(
        :empresa => nil,
        :filial => nil,
        :placa => "Placa",
        :ano => "Ano",
        :numero => "Numero",
        :renavam => "Renavam"
      )
    ])
  end

  it "renders a list of veiculos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Placa".to_s, :count => 2
    assert_select "tr>td", :text => "Ano".to_s, :count => 2
    assert_select "tr>td", :text => "Numero".to_s, :count => 2
    assert_select "tr>td", :text => "Renavam".to_s, :count => 2
  end
end

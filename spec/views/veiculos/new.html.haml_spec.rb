require 'rails_helper'

RSpec.describe "veiculos/new", :type => :view do
  before(:each) do
    assign(:veiculo, Veiculo.new(
      :empresa => nil,
      :filial => nil,
      :placa => "MyString",
      :ano => "MyString",
      :numero => "MyString",
      :renavam => "MyString"
    ))
  end

  it "renders new veiculo form" do
    render

    assert_select "form[action=?][method=?]", veiculos_path, "post" do

      assert_select "input#veiculo_empresa_id[name=?]", "veiculo[empresa_id]"

      assert_select "input#veiculo_filial_id[name=?]", "veiculo[filial_id]"

      assert_select "input#veiculo_placa[name=?]", "veiculo[placa]"

      assert_select "input#veiculo_ano[name=?]", "veiculo[ano]"

      assert_select "input#veiculo_numero[name=?]", "veiculo[numero]"

      assert_select "input#veiculo_renavam[name=?]", "veiculo[renavam]"
    end
  end
end

require 'rails_helper'

RSpec.describe "filiais/new", :type => :view do
  before(:each) do
    assign(:filial, Filial.new(
      :nome => "MyString",
      :endereco => "MyString",
      :cnpj => "MyString",
      :empresa => nil
    ))
  end

  it "renders new filial form" do
    render

    assert_select "form[action=?][method=?]", filiais_path, "post" do

      assert_select "input#filial_nome[name=?]", "filial[nome]"

      assert_select "input#filial_endereco[name=?]", "filial[endereco]"

      assert_select "input#filial_cnpj[name=?]", "filial[cnpj]"

      assert_select "input#filial_empresa_id[name=?]", "filial[empresa_id]"
    end
  end
end

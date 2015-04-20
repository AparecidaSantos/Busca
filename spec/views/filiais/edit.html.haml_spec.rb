require 'rails_helper'

RSpec.describe "filiais/edit", :type => :view do
  before(:each) do
    @filial = assign(:filial, Filial.create!(
      :nome => "MyString",
      :endereco => "MyString",
      :cnpj => "MyString",
      :empresa => nil
    ))
  end

  it "renders the edit filial form" do
    render

    assert_select "form[action=?][method=?]", filial_path(@filial), "post" do

      assert_select "input#filial_nome[name=?]", "filial[nome]"

      assert_select "input#filial_endereco[name=?]", "filial[endereco]"

      assert_select "input#filial_cnpj[name=?]", "filial[cnpj]"

      assert_select "input#filial_empresa_id[name=?]", "filial[empresa_id]"
    end
  end
end

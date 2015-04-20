require 'rails_helper'

RSpec.describe "filiais/index", :type => :view do
  before(:each) do
    assign(:filiais, [
      Filial.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :cnpj => "Cnpj",
        :empresa => nil
      ),
      Filial.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :cnpj => "Cnpj",
        :empresa => nil
      )
    ])
  end

  it "renders a list of filiais" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

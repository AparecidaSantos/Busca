require 'rails_helper'

RSpec.describe "filiais/show", :type => :view do
  before(:each) do
    @filial = assign(:filial, Filial.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :cnpj => "Cnpj",
      :empresa => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(//)
  end
end

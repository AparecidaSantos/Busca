# coding: utf-8
require 'rails_helper'

feature 'gerenciar Filial' do

  before :each do
    create(:empresa, nome: 'iff')
    
  end

  let(:empresa) {create(:empresa, nome: 'ifsp')}
  

  scenario 'incluir Filial' do # , :js => true do
    visit new_filial_path
    preencher_e_verificar_filial
  end

  scenario 'alterar Filial' do #, :js => true do
    filial = FactoryGirl.create(:filial)
    visit edit_filial_path(filial)
    preencher_e_verificar_filial
  end

  scenario 'excluir filial' do #, :javascript => true do
    filial = FactoryGirl.create(:filial)
    visit filiais_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_filial
    fill_in 'Nome', :with => "Luiz"
    fill_in 'Endereço', :with => "Rua XXX"
    fill_in 'Cnpj', :with => "99999"
    select 'iff', from: 'Empresa'


    click_button 'Salvar'

    expect(page).to have_content 'Nome: Luiz'
    expect(page).to have_content 'Endereço: Rua XXX'
    expect(page).to have_content 'Cnpj: 99999'
    expect(page).to have_content 'Empresa: iff'

  end

end

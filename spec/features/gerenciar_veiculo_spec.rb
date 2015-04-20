# coding: utf-8
require 'rails_helper'

feature 'gerenciar Veiculo' do

  before :each do
    create(:empresa, nome: 'iff')
    create(:filial, nome: 'guarus',empresa: empresa)
  end

  let(:empresa) {create(:empresa, nome: 'ifsp')}
  let(:filial) {create(:filial, nome: 'centro',empresa: empresa)}

  scenario 'incluir Veiculo' do # , :js => true do
    visit new_veiculo_path
    preencher_e_verificar_veiculo
  end

  scenario 'alterar Veiculo' do #, :js => true do
    veiculo = FactoryGirl.create(:veiculo)
    visit edit_veiculo_path(veiculo)
    preencher_e_verificar_veiculo
  end


  scenario 'excluir veiculo' do #, :javascript => true do
    veiculo = FactoryGirl.create(:veiculo)
    visit veiculos_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_veiculo
    fill_in 'Placa', :with => "Luiz"
    fill_in 'Ano', :with => "Rua XXX"
    fill_in 'Numero', :with => "99999"
    fill_in 'Renavam', :with => "99999"	
    select 'iff', from: 'Empresa'
    select 'guarus', from: 'Filial'

    click_button 'Salvar'

    expect(page).to have_content 'Placa: Luiz'
    expect(page).to have_content 'Ano: Rua XXX'
    expect(page).to have_content 'Numero: 99999'
    expect(page).to have_content 'Renavam: 99999'
    expect(page).to have_content 'Empresa: iff'
    expect(page).to have_content 'Filial: guarus'

  end

end

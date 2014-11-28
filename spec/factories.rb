FactoryGirl.define do
  factory :user do
    name_user     "User Test"
    email_user    "teste@teste.com"
    password "teste123"
    password_confirmation "teste123"
    address_user "DF"
    id "15"
  end

  factory :supplier do
  	type_supplier	"PessoaJuridica"
  	social_reason_supplier "Importante"
  	fantasy_name_supplier "Tchanananas"
  	cnpj "222777-13"
  	cnaep_main_code_supplier "aCnaepCode"
	 description_cnaep_code_supplier "aCnaepDescription"
  end

  factory :customer_service do
    id "50"
  	year_customer_service "2014"
  	trimester_customer_service "2"
  	month_customer_service "05"
  	date_customer_service "2014-05-23"
  	region_customer_service "Centro-Oeste"
  	uf_customer_service "DF"
  	description_customer_service "Atendimento realizado"
  	code_subject_customer_service "2"
  	description_subject_customer_service "Atendimento"
  	code_problem_customer_service "4"
  	description_problem_customer_service "Duvida"
  	genre_customer_service "Grave"
  	cep_customer_service "11111111"
  end

  factory :unity_procon do
    id "250"
  	address_unity_procon "Shopping Venancio"
  	name_coordinator_unity_procon "Roberto"
	uf_procon "DF"
	email_unity_procon "procon@procon.com"
	list_phones "32323232"
	position_unity_procon "1"
  end

  factory :rating do
    id "45"
    description_rating "uma descricao"
    value_rating "3"
    unity_procon_id "50"
    user_id "15"

  end
end
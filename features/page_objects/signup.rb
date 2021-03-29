class Cadastro

  include PageBase

  def initialize
    @elem_conta = :id, 'tvSignUp'
    @elem_first_name= :id, 'etFirstName'
    @elem_family_name= :id, 'etFamilyName'
    @elem_email= :id, 'etEmail'
    @elem_phone= :id, 'etPhoneNumber'
    @elem_password= :id, 'etPassword'
    @elem_bt_signup = :id, 'btnSignup'
    @elem_bt_back = :id, 'ivBack'
    @elem_bt_skip = :id, 'tvSkip'
    @elem_inicial = :id, 'titleTextView'
  end
  
  def criar_conta
    find(@elem_conta).click
  end
  
  def preencher_dados
    find(@elem_first_name).send_keys 'Miecio'
    find(@elem_family_name).send_keys 'Costa'
    find(@elem_email).send_keys 'teste@gmail.com'
    find(@elem_phone).send_keys '998899889988'
    find(@elem_password).send_keys '123456789'
    find(@elem_bt_signup).click
    sleep(5.0)
    find(@elem_bt_back).click
  end
  
  def skip_login
    find(@elem_bt_skip).click
  end

  def valida_tela_inicial
    puts find_element(:xpath, '//android.widget.TextView[@text="NearBy"]').text
    find(@elem_inicial).text
  end

end
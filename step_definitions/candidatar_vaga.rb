Selenium::WebDriver::Chrome.driver_path="C:/chromedriver.exe"

Dado("o site da Inmetrics") do
  @driver = Selenium::WebDriver.for :chrome
  @driver.get "https://www.inmetrics.com.br/"
end

Quando("acessar a opção Confira Nossas Vagas") do
   element = @driver.find_element(:css , '#carreiras > div > div > a')
   @driver.execute_script("arguments[0].click();", element)
end

Quando("selecionar uma vaga") do
    comboLocation = @driver.find_element(:id , 'filter-workplace')
    options = comboLocation.find_elements(:tag_name, 'option')
    options.each { |option| option.click if option.text == 'Barueri' }

    element = @driver.find_element(:css , 'body > div.description > div.job-list.jobs-to-filter > table > tbody > tr:nth-child(1) > td:nth-child(1) > a')
    @driver.execute_script("arguments[0].click();", element)

end

Então("o site exibirá a tela de cadastro") do
  pending # Write code here that turns the phrase above into concrete actions
end
class HomePage
  def initialize(driver)
    @driver = driver
  end

  def verify_page
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @driver.find_element(:id => 'lbl-val_1') }
  end

  def count_values
  
    iCountvalues = @driver.find_elements(id: "lbl_val_").size;
    iCounttext =  @driver.find_elements(id: "lbl_txt_").size

    if iCountvalues ==iCounttext
      puts "Correct number of values present"
    else
      puts "Value count doesn't match"

  end

  def get_sum_of_all_values

    @logger.info("Searching element #{[value1, value2, value3, value4, value5]}")
    allelements = @driver.find_elements(id: "lbl_val_")
    @logger.info("Total Elements Found with locator #{locator} are : #{allelements.size}");
  
    if allelements.all? { |elem| elem.value.start_with?("$") }
      elements = allelements.map { |elem| elem.value.tr('$', '').to_i }
      elements.reduce(:+)
    end

  end
  
  def sum_values_matches_the_page

    if  @driver.find_element(:id => 'txt_ttl_val').get_text == get_sum_of_all_values
    puts "Correct Sum value" + get_sum_of_all_values
     else
    puts "InCorrect Sum value from page"  @driver.find_element(:id => 'txt_ttl_val').get_text +"and expected" get_sum_of_all_values
  end

  def currency_format
    
      allelements = @driver.find_elements(id: "lbl_val_")
      allelements.each do |allelement|
        r = /^\d+\.\d\d$/
      if  allelement.match r
        puts " All values are in correct curency format"
      else 
        puts "Values are not in correct currency format"
  end

  def values_greater_than_zero

    allelements = @driver.find_elements(id: "lbl_val_")
    if allelements.all? { |elem| elem.value > 0 }
      puts "value of all element are greater than zero"
    else
      puts "value of element not greater than zero"

  end
class homepageObjects
    set_url 'https://www.exercise1.com/values '
  
   include PageObject
  
    page_url("https://www.exercise1.com/values")
  
    text_field(:first_element_in_page , :id => 'lbl_val_1')
    text_field(:value_text_label, :id => 'lbl_val_')
    text_field(:actual_value_label, :id => 'txt_val_')
  end
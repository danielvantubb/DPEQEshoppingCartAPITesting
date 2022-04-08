
  Feature: Testing the Shoping Cart Cart
     Background:
       * def url = "http://localhost:8500/"

       Scenario:
         Given url http://localhost:8500/shoppingcart/items?Type=Fresh&Discount=Applied
         And header "Client-ID"= "DPE-QE"
         Then status 200 
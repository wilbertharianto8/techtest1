Feature: TechTest UI number 2

Scenario: Buatkan script automation (Bahasa Pemograman Apa Saja) untuk alamat website https://www.saucedemo.com/
  * def trimText = function(text){ return text.trim(); }
  * def username = 'standard_user'
  * def password = 'secret_sauce'

  Given driver 'https://www.saucedemo.com/'
  * fullscreen()
  And waitForEnabled("div#root")
  When input("//input[@id='user-name']", username)
  And input("//input[@id='password']", password)
  And waitForEnabled("//input[@id='login-button']").click()
  * def hargaBarang = trimText(text("//div[normalize-space()='$29.99']"))
  And waitForEnabled("//button[@id='add-to-cart-sauce-labs-backpack']").click()
  And waitForEnabled("//a[@class='shopping_cart_link']").click()
  And match text("//div[@class='inventory_item_price']") == hargaBarang
  And waitForEnabled("//button[@id='checkout']").click()
  And input("//input[@id='first-name']", "Wilbert")
  And input("//input[@id='last-name']", "Harianto")
  And input("//input[@id='postal-code']", "14450")
  And waitForEnabled("//input[@id='continue']").click()
  And waitForEnabled("//button[@id='finish']").click()
  Then waitForText("//h2[normalize-space()='THANK YOU FOR YOUR ORDER']", "THANK YOU FOR YOUR ORDER")
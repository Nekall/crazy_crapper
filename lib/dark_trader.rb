require 'rubygems'
require 'nokogiri'
require 'open-uri'
#initialisation adresse url
def init
    page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
end
#recupération des noms de crypto
def name_of_crypto(page)
    arr_names = []
    200.times do |count|
      page.css("tr.cmc-table-row:nth-child(#{count + 1}) > td:nth-child(3) > div:nth-child(1)").each do |infos|
        arr_names << (infos.text)
      end
    end
    return arr_names
end
#recupération des valeurs des crypto
def prices_of_crypto(page)
    arr_prices = []
    200.times do |count|
      page.css("tr.cmc-table-row:nth-child(#{count + 1}) > td:nth-child(5) > div:nth-child(1) > a:nth-child(1)").each do |infos|
        arr_prices << (infos.text)
      end
    end
    return arr_prices
end
#combinaison des noms et valeurs et return final
def final_result(arr_names, arr_prices)
    crypto_final = arr_names.zip(arr_prices).map{|x| [x].to_h}
    print crypto_final
    return crypto_final
end
#méthode orchestre
def perform
    page = init
    arr_names = name_of_crypto(page)
    arr_prices = prices_of_crypto(page)
    crypto_final =  final_result(arr_names, arr_prices)
end

perform

require 'rubygems'
require 'nokogiri'
require 'open-uri'

def init
    page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
end

def arname
  arr_names = []
end

def arprice
  arr_prices = []
end

def name_of_crypto(page, arr_names)
    200.times do |count|
      page.css("tr.cmc-table-row:nth-child(#{count + 1}) > td:nth-child(3) > div:nth-child(1)").each do |infos|
        arr_names << (infos.text)
      end
    end
end

def prices_of_crypto(page, arr_prices)
    200.times do |count|
      page.css("tr.cmc-table-row:nth-child(#{count + 1}) > td:nth-child(5) > div:nth-child(1) > a:nth-child(1)").each do |infos|
        arr_prices << (infos.text)
      end
    end
end

def final_print(arr_names, arr_prices)
    crypto_final = arr_names.zip(arr_prices).map{|x| [x].to_h}
    print crypto_final
end



def perform
    page = init
    arr_names = arname
    arr_prices = arprice
    name_of_crypto(page, arr_names)
    prices_of_crypto(page, arr_prices)
    crypto_final = final_print(arr_names, arr_prices)
end

perform

#https://coinmarketcap.com/all/views/all/

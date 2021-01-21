
Projet : Le scrappeur fou
__________________________


1•Dark Trader
==============
En prenant pour source le site CoinMarketCap, fait un programme qui récupère le cours de toutes les cryptomonnaies et les enregistre bien proprement dans un array de hashs.
Ton array devra avoir le format suivant :

a = [
  { "BTC" => 5245.12 },
  { "ETH" => 217.34 }, 
  etc
]




2•Mairie christmas
===================
Va sur cet annuaire des mairies (http://annuaire-des-mairies.com/) et récupère les adresses e-mails des mairies du Val d'Oise. Comme pour l'exercice précédent, tu devras enregistrer les données dans un array de hash suivant ce format :

a = [
  { "ville_1" => "email_1" },
  { "ville_2" => "email_2" }, 
  etc
]




3•Cher député
==============

Maintenant, fini de se faire mâcher le travail par tes gentils formateurs de THP. Tu dois récupérer la liste complète des députés de France ainsi que leurs adresses e-mail. Cherche par toi-même le site le plus aisé à scrapper et stocke les informations extraites dans une array de hashs selon ce format (un peu différent des exercices précédents) :

a = [
  { 
    "first_name" => "Jean",
    "last_name" => "Durant",
    "email" => "jean.durant@assemblée.fr"
  },
  { 
    "first_name" => "Martin",
    "last_name" => "Dupont",
    "email" => "martin.dupont@assemblée.fr"
  },
  etc
]





#Un repo GitHub propre qui contient un fichier de scrapping pour chacun des trois exercices (dans le dossier lib), des tests pour chacun des scrappeurs (dossier #spec), un Gemfile et un README qui explique le tout.

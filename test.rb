require "geoip"
c = GeoIP.new('GeoLiteCity.dat').city('164.39.71.226')
# puts c.inspect

city_list = {
	"Aberdeen" => "Piece",
	"Armagh" => "Roll",
	"Manchester" => "Bap" 
}

puts city_list[c.city_name]
__END__


Aberdeen
Armagh
Bangor
Bath
Belfast
Birmingham
Bradford
Brighton and Hove
Bristol
Cambridge
Canterbury
Cardiff
Carlisle
Chester
Chichester
City of London
Coventry
Derby
Dundee
Durham
Edinburgh
Ely
Exeter
Glasgow
Gloucester
Hereford
Inverness
Kingston upon Hull
Lancaster
Leeds
Leicester
Lichfield
Lincoln
Lisburn
Liverpool
Londonderry
Manchester
Newcastle upon Tyne
Newport
Newry
Norwich
Nottingham
Oxford
Peterborough
Plymouth
Portsmouth
Preston
Ripon
Salford
Salisbury
Sheffield
Southampton
St Albans
St Davids
Stirling
Stoke-on-Trent
Sunderland
Swansea
Truro
Wakefield
Wells
Westminster
Winchester
Wolverhampton
Worcester
York
class Rez::PlayerScraper

	def self.scrape_players
		#get the website from the internet
		tempfile = open("http://www.realmadrid.com/en/football/squad")
		#create nokogiri object out of the html from the site
		site = Nokogiri::HTML(tempfile)

		# get the list of players
		player_list = site.css('ul.m_players_list li')
		# players_list is an array of li tags with the players info

		player_list.each do |player_li|
			number = player_li.css('.m_player_info_number').text

			position = player_li.css('.m_player_info_content span').text.strip

			name = player_li.css('.m_player_info_content strong').text

			Rez::Player.new(name, number, position)
		end


	end
end
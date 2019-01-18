def check_if_user_gave_input
	abort("you should write what you want to search on google") if ARGV.empty?
end

def get_research_name
	return research_name = ARGV.join(" ")
end

def build_url(word)
	url_research = "https://www.google.com/search?q=#{word}"
	system("open", url_research)
end



def perform
	check_if_user_gave_input
	build_url(get_research_name)
end

perform
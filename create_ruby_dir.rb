require "colorize"

def check_if_user_gave_input
	abort("you should enter a one word directory name") if ARGV.empty?
end

def create_and_go_folder_name
	folder_name = ARGV.first
	Dir.mkdir(folder_name)
	Dir.chdir folder_name
	return folder_name
end

def create_gemfile
	file = File.open("Gemfile", "w")
	file.puts("source 'https://rubygems.org'")
	file.puts("ruby '2.5.1'")
	file.puts("gem 'rubocop'")
	file.puts("gem 'pry'")
	file.puts("gem 'rspec'")
	file.puts("gem 'dotenv'")
	file.close
end

def bundle_install
	system "bundle install"
end

def git_initialisation
	system "git init"
end

def rspec_initialisation
	system "rspec --init"
end

def create_env
	file = File.open(".env", "w")
end

def create_lib_directory
	Dir.mkdir("lib")
end

def create_env
	file = File.open(".env", "w")
end

def create_README
	file = File.open("README.md", "w")
	file.puts("This is a ruby file made by Maud Lévy")
	file.close
end

def perform
	check_if_user_gave_input
	folder_name = create_and_go_folder_name 
	create_gemfile
	bundle_install
	git_initialisation
	rspec_initialisation
	create_env
	create_lib_directory
	create_env
	create_README
	puts "********************************************************************".red
	puts "your file #{folder_name} is finally create ! You're in ! youhouhou !".yellow
	puts "********************************************************************".red
end

perform
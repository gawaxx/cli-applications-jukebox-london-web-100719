# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]
  
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "/Please enter a song name or number:"
  input = gets.strip
  if input.to_i.between?(1, songs.length)
      puts "#{songs[input.to_i - 1]}"
  end
  if !songs.include? input || !input.to_i.between?(1, songs.length)
    puts "Invalid input, please try again"
  elsif songs.include? input
    puts input
  end
end

def exit_jukebox
  put "Goodbye"
end



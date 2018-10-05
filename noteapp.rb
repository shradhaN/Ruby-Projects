
require "thor"
require "date"

class MyNoteApp < Thor

	desc "set Note" , "add new note"
	def set(note)
		aFile = File.new("note.txt",'a')
		aFile.puts "#{DateTime.now} #{note}"
		aFile.close
	end

	desc "get Note", "get the added notes"
	def get()
		aFile = File.open("note.txt","r")
		puts aFile.read
		aFile.close
	end
end

MyNoteApp.start


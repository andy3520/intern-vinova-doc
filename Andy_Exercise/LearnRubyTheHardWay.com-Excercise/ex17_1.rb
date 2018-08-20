from_file, to_file = ARGV
puts "Copying..."
in_file = open(from_file)
out_file = open(to_file,'w')
out_file.write(in_file.read)
in_file.close
puts "Done!"

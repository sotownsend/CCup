def install
  puts "Installing..."
  Dir.mkdir 'build' unless Dir.exist? 'build'
  Dir.chdir 'build'
  system 'cmake ..'
  system 'make'
  Dir.chdir '../'
  system 'cp CCup.h /usr/local/include'
  system 'cp CCNetwork.h /usr/local/include'
  system 'cp build/libccup.a /usr/local/lib'
  system 'cp ccc.rb /usr/local/bin'
  system 'cp ccc /usr/local/bin'
end

def remove
  puts "Removing..."
  system 'rm /usr/local/include/somefile.h'
  system 'rm /usr/local/bin/somefile'
end

if ARGV[0] == "install"
  install
elsif ARGV[0] == "remove"
  remove
else
  install
end

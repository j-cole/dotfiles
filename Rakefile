require 'rake'

desc "install the dot files into user's home directory"
task :install do
  @replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile].include? file
    
    if File.exist?(File.join(ENV['HOME'], ".#{file}"))
      if @replace_all
        replace_file(file)
      else
        while !check_overwrite(file)
          puts 'Please enter one of [ynaq]'
        end
      end
    else
      link_file(file)
    end
  end
end

def check_overwrite(file)
  print "overwrite ~/.#{file}? [ynaq] "
  case $stdin.gets.chomp
  when 'a'
    @replace_all = true
    replace_file(file)
  when 'y'
    replace_file(file)
  when 'n'
    puts "skipping ~/.#{file}"
  when 'q'
    exit
  else
    return false
  end
end

def replace_file(file)
  system %Q{rm "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end

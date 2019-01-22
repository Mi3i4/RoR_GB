require 'pathname'

task default: :lines_count

desc 'Подсчет строк в папках и подпапках'
task :lines_count do

  #check: find . -name *.rb | xargs cat | wc -l

  count = 0
  Dir['**/*'].select {|f| File.extname(f) == '.rb'}.each {|fn| File.open(fn,'r')}
  f.each { |l| count += 1 }
  puts count
  end

require 'pathname'

task default: :rb_files_count

desc 'Подсчет файлов .rb в папках и подпапках'
task :rb_files_count do
  def scan (path, counter = 0)
    entries = Dir.new(path).reject {|x| %w[. ..].include? x}.map {|x| path.join x}
    entries.reduce(counter) do |counter, item|
      if File.directory? item
        scan(item, counter)
      elsif item.extname == '.rb'
        counter + 1
      else
        counter
      end
    end
  end

  path = Pathname.new('.')
  puts scan(path)

end

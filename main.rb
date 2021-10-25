file_name = ARGV.first

if File.exist?(file_name)
  lines = File.readlines(file_name, chomp: true)
  p lines[rand(1..lines.length)]
end

length = ARGV.first.to_i
file_name_new = ARGV[1]

if length > 0
  file_test = "test_data.txt"
  lines = File.readlines(file_test, chomp: true).join
  File.write(file_name_new, lines[0..length])
end

if File.exist?(file_name)
  lines = File.readlines(file_name, chomp: true).select { |l| l.empty? == false }
  max, min = lines.minmax
  p "Max stroka: #{max}. Ee Razmer = #{max.size}"
  p "Min stroka: #{min}. Ee Razmer = #{min.size}"
end


require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs = ["lib"] # Relative path of program code directory
  t.warning = true
  t.test_files = FileList['test/*_test.rb']
end

task default: :test
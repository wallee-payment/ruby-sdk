require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.libs << "lib"
  t.warning = false
  t.verbose = true
  t.test_files = FileList['test/**/*.rb']
  t.options = "-v --stop-on-failure"
end


task default: %w[test]

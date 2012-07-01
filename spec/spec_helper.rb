lib_dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', '*.rb'))
Dir[lib_dir].each { |file| require file }

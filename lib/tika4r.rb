module Tika4R
  
  def self.extract_content(filename)
    `java -jar #{File.join(File.dirname(__FILE__), "..", "vendor", "tika-app-0.9.jar").inspect} -t #{filename.inspect}`
  end
  
end

require 'rjb'
Rjb.load(File.join(File.dirname(__FILE__), "..", "vendor", "tika-app-0.9.jar"), ["-Djava.awt.headless=true"])

module Tika4R
  File = Rjb.import("java.io.File")
  Tika = Rjb.import("org.apache.tika.Tika")
  
  def self.extract_content(filename)
    file = ::Tika4R::File.new(filename)
    # Even if we could avoid loading everything here by parsing to a Reader this 
    # still wouldn't help us as the Rsolr plugin builds XML by using Builder, and
    # it needs to be a full string by then (i.e. the XML this will be in is built
    # in memory anyway)
    Tika.new._invoke("parseToString", "Ljava.io.File;", file)
  end
  


end

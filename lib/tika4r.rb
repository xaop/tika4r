require 'tika4r/exceptions.rb'

module Tika4R
  
  def self.extract_content(filename)
    load_rjb
    file = Rjb.import("java.io.File").new(filename)
    tika = Rjb.import("org.apache.tika.Tika")

    begin
      # Even if we could avoid loading everything here by parsing to a Reader this 
      # still wouldn't help us as the Rsolr plugin builds XML by using Builder, and
      # it needs to be a full string by then (i.e. the XML this will be in is built
      # in memory anyway)
      tika.new._invoke("parseToString", "Ljava.io.File;", file)
    rescue TikaException => e
      raise Tika4R::Exception.new(e)
    ensure
      GC.start
    end
  end
  

  def self.load_rjb
    if require 'rjb'
      Rjb.load(File.join(File.dirname(__FILE__), "..", "vendor", "tika-app-0.9.jar"), ["-Djava.awt.headless=true"])
    end
  end

end

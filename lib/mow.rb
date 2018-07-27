require "mow/version"

module Mow
  class Trimmer
    def trim(from_file_path, to_file_path=nil)
      results = File.read(from_file_path).split("\n").delete_if { |line| line =~ /^\s*#/ }.compact.join(";")
      if to_file_path
        File.open(to_file_path, "w+") { |f| f.puts(results) }
      else
        print results
      end
    end
  end
end

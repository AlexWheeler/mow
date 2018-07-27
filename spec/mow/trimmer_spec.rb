RSpec.describe Mow::Trimmer do
  subject { trimmer = Mow::Trimmer.new }

  describe "#trim" do
    context "called with empty input file" do
      it "raises Errno::ENOENT" do
        expect { subject.trim("") }.to raise_error(Errno::ENOENT)
      end
    end

    context "called with one argument" do
      it "transforms to oneliner and prints result to STDOUT" do
        expect{ subject.trim(fixture_file_path("input.rb")) }.to output("class Person;  def initialize;  end;end").to_stdout
      end
    end

    context "called with two arguments" do
      it "transforms to oneliner and writes result to output file" do
        file = StringIO.new
        expect(File).to receive("open").and_yield(file)
        subject.trim(fixture_file_path("input.rb"), "to.rb")
        expect(file.string).to eq("class Person;  def initialize;  end;end\n")
      end
    end
  end
end

require "spec_helper"
require "substitute/line"

describe Substitute::Line do
  subject { described_class.new(line) }

  describe "#to_s" do
    let(:output) { subject.to_s.split("\n") }

    context "A line with identifiers and timestamps" do
      let(:line) { "1 00:00:19:17 00:00:22:01 This is the start of a film" }

      it "starts with a blank line" do
        expect(output.first).to eq ""
      end

      it "extracts the identifier" do
        expect(output[1]).to eq "1"
      end

      it "formats the timestamps correctly" do
        expect(output[2]).to eq "00:00:19.680 --> 00:00:22.040"
      end

      it "finishes with the text" do
        expect(output[3]).to eq "This is the start of a film"
      end

      it "is the correct length" do
        expect(output.size).to eq 4
      end
    end

    context "a continuation line" do
      let(:line) { "And here it continues" }

      it "is just one line long" do
        expect(output.size).to eq 1
      end

      it "just returns the given line" do
        expect(subject.to_s).to eq line
      end
    end

    context "srt" do
      subject { described_class.new(line, srt: true) }

      context "A line with identifiers and timestamps" do
        let(:line) { "1 00:00:19:17 00:00:22:01 This is the start of a film" }

        it "formats the timestamps correctly" do
          expect(output[2]).to eq "00:00:19,680 --> 00:00:22,040"
        end
      end
    end
  end
end

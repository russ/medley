require "./spec_helper"

describe Medley::Notes do
  describe "#by_scale" do
    pending "returns an array of letters in C major scale order" do
      Medley::Notes.by_scale("Cmaj").should eq(["C", "D", "E", "F", "G", "A", "B", "C"])
    end

    pending "returns an array of letters in F major scale order" do
      Medley::Notes.by_scale("Fmaj").should eq(["F", "G", "A", "Bb", "C", "D", "E", "F"])
    end
  end

  describe ".halfstep_up" do
    it "returns G# when given G" do
      note = Medley::Notes.new("G")
      note.halfstep_up.should eq "G#"
    end

    it "returns C when given B" do
      note = Medley::Notes.new("B")
      note.halfstep_up.should eq "C"
    end

    it "returns E when given D#" do
      note = Medley::Notes.new("D#")
      note.halfstep_up.should eq "E"
    end

    it "returns B when given Bb" do
      note = Medley::Notes.new("Bb")
      note.halfstep_up.should eq "B"
    end
  end

  describe ".wholestep_up" do
    it "returns A when given G" do
      note = Medley::Notes.new("G")
      note.wholestep_up.should eq "A"
    end

    it "returns F for Eb" do
      note = Medley::Notes.new("Eb")
      note.wholestep_up.should eq "F"
    end
  end
end

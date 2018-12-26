require 'spec_helper'

describe "Archivist" do

  path = "fixtures/project-folder"
  let(:archivist) { Archivist::Archivist.new }
  let (:empty_project_folder) {
    file_name = File.basename(file_path)
    dir = File.dirname(file_path)

    Dir.foreach(dir) do |f|
      if f != file_name or f != '.' or f != '..' 
        if File.directory?(f) 
          FileUtils.rm_rf(f)
        else FileUtils.rm(f)
      end
    end
  }

  describe "#init" do
    before do
      empty_project_folder
      archivist.init
    end

    it "creates a '_completed' folder" do
      expect(File).to exist(path+"_completed")
    end

    it "creates a '_submitted' folder within the '_completed' folder" do
      
    end
  end

  describe "#move_to_submitted" do
    context "in root folder" do
      it "moves the current project folder to the completed/submitted folder" do
        
      end

    end

    context "already in completed folder" do
      it "moves the current project folder into the completed/submitted folder" do
        
      end

      it "doesn't create an additional completed folder inside the completed folder" do
        
      end

    end

  end

end


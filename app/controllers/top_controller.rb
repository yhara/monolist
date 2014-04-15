class TopController < ApplicationController
  def index
    @folder = Folder.root
    @new_folder = Folder.new(parent: @folder)
  end
end

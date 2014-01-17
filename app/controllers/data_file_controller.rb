class DataFileController < ApplicationController
    def index
        render :file => 'app\views\data_files\index.html.erb'
    end
    
    def uploadFile
        post = DataFiles.save(params[:upload])
        render :text => "File Has Been Uploaded Successfuly"
    end
end

class DataFile < ActiveRecord::Base
    def self.save(upload)
        name = upload['datafile'].original_filename
        #contentType = upload['datafile'].content_type
        directory = "public/data"
        path = File.join(directory , name)
        File.open(path , "wb") { |f| f.write(upload['datafile'].read) }
    end
end

class RecordsController < ApplicationController
    def index 
        @records = Record.all
        json_response(@records)
    end
end

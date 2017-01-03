class RailWayStationsRoute < ActiveRecord::Base
  belongs_to :railway_station
  belongs_to :route
end
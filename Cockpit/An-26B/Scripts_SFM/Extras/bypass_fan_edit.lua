local engines_system = GetSelf()

local update_time_step =    0.0167
make_default_activity(update_time_step)

local sensor_data = get_base_data()

local DRAW_FAN1		    = 	407
local DRAW_FAN2		    = 	408
local PropStepLim		=   0.0833
local propState         =   -1
local propMaxRPM		=   1600

function update()
    --sensor is from 0 to 100 so it is divided by 100 and multiplied by the prop max RPM.
local propRPML = sensor_data.getEngineLeftRPM()*(propMaxRPM/100)
local propRPMR = sensor_data.getEngineRightRPM()*(propMaxRPM/100)
	if propRPML < 200 then
	propStep = propRPML*update_time_step/60
	
	--keeps prop animation between 0 and 1
	propState = (propState + propStep)%-1
	end
	if propRPML > 200 then
	propStep = propRPML*update_time_step/60
	
	--keeps prop animation between 0 and 1
	propState = (propState + propStep)%1
	end
	
	set_aircraft_draw_argument_value(DRAW_FAN1,propState)
	
	if propRPMR < 200 then
	propStep = propRPMR*update_time_step/60
	
	--keeps prop animation between 0 and 1
	propState = (propState + propStep)%-1
	end
	if propRPMR > 200 then
	propStep = propRPMR*update_time_step/60
	
	--keeps prop animation between 0 and 1
	propState = (propState + propStep)%1
	end
	
	set_aircraft_draw_argument_value(DRAW_FAN2,propState)
end
local ProfileService = require(script.Parent.ProfileService)

local ProfileWrapper = {}

ProfileWrapper.__index = ProfileWrapper

function ProfileWrapper.New(Key:string, Template : {[any] : any})
    
local self = setmetatable({}, ProfileWrapper)

self.Profile = ProfileService.GetProfileStore(Key, Template)

self.Profiles = {} :: {[string]: any}

return self
end

function ProfileWrapper.NewProfile(self : {}, Player)
    
    local Profile = self.Profile:LoadProfileAsync(Player.Name .. "_" .. Player.UserId)


if Player:IsDescendantOf(game.Players) then


if Profile then
    
self.Profiles[Player.Name .. Player.UserId] = Profile

                            end

else
Profile:Release()
if self.Profiles[Player.Name .. Player.UserId] then
    
self.Profiles[Player.Name .. Player.UserId] = nil
Player:Kick("Data Problems")

                    end

Player:Kick("Data Problems")

        end

end



function ProfileWrapper.ReleaseProfile(self : {}, Player)
    
if self.Profiles[Player.Name .. Player.UserId] then

self.Profiles[Player.Name .. Player.UserId]:Release()

self.Profiles[Player.Name .. Player.UserId] = nil

    end

end



return ProfileWrapper
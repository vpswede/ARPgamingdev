/*
    File: fn_deathScreen.sqf
    Author: Bryan "Tonic" Boardwine
    Modified by: John "Paratus" VanderZwet
    
    Description:
    Handles stuff being displayed on the death screen while
    it is currently active.
*/
private["_medicsOnline","_medicsNear"];
disableSerialization;

_medicsOnline = ((findDisplay 7300) displayCtrl 7304);
_medicsNear = ((findDisplay 7300) displayCtrl 7305);

waitUntil {
    _nearby = 99999;
    {
        if (side _x == independent && alive _x && _x != player) then
        {
            _distance = (getPosATL life_corpse) distance _x;
            if (_distance < _nearby) then { _nearby = _distance; };
        };
    } foreach playableUnits;
    _medicsOnline ctrlSetText format[localize "STR_Medic_Online",[independent] call life_fnc_playerCount];
    if (_nearby == 99999) then { _medicsNear ctrlSetText format["Nearest Medic: None",_nearby]; }
    else { _medicsNear ctrlSetText format["Nearest Medic: %1m",[(round _nearby)] call life_fnc_numberText]; };
    sleep 1;
    (isNull (findDisplay 7300))
};
waitUntil {!(isNull player)};
waitUntil {player==player};

player createDiaryRecord ["Diary",["MISSION NOTES","

		<br/> Misc Scripts:
		<br/> Uses AI garrison script. 
		<br/> Uses AI caching script.
        <br/> Uses mining script.
		<br/>
        <br/> Mission by thealmightyn00b
		<br/> Mission Framework by Landyacht

	"]];

switch (side player) do
{
case WEST:
{
};
case EAST:{
		
			
	player createDiaryRecord ["Diary",["COMMAND AND SIGNAL","

		<br/> ----1st Squad----
		<br/> Alpha Leader and Medic, Alpha 1 and Alpha 2
		<br/>
		<br/> ----Air----
		<br/> Sokol (Pronounced: Soh-kahl (Means: Falcon)) 
		<br/>
		<br/>All on LR1
		
		
		
	"]];

	player createDiaryRecord ["Diary",["SERVICE SUPPORT","
	
		<br/> 1 x MI24 Hind and crew.

	"]];

	player createDiaryRecord ["Diary",["EXECUTION","

		<br/>Intent Statement:
		<br/>
		<br/>Attack and kill the HVT with minimal losses.
		<br/>
		<br/>Execution:
		<br/>
		<br/>At the commanders discretion. Suggest not inserting <marker name='ch_1'>north of the border</marker>.
		
	"]];

	player createDiaryRecord ["Diary",["MISSION","

		<br/>Our mission is to insert into <marker name='hvtloc'>La Trinite</marker> 
		<br/>and kill an <marker name='hvtloc'>HVT</marker> who is 
		<br/>directing operations in this district.

	"]];

	player createDiaryRecord ["Diary",["SITUATION","
	
		<br/>
		<br/>==========Situation==============================================
		<br/>
		<br/>A rebel government friendly to our interests has taken over the <marker name='ch_1'>northern part of Malden</marker>. 
		<br/>They have a <marker name='cordon'>mine protected border</marker> in place, 
		<br/>and are opposed by mainly civilian militia friendly to the <marker name='fna'>fallen government</marker>. 
		<br/>The southern half of the island is in disarray after the coup. 
		<br/>We are a Spetznaz unit set to assist in our nations efforts.
		<br/>
		<br/>=================================================================
		<br/>		
		<br/>1. Enemy Forces
		<br/>
		<br/>a. Composition:
		<br/>
		<br/> Freedom fighters and militia with support from armoured vehicles as well as an HVT.
		<br/>
		<br/>b. Disposition:
		<br/>
		<br/> They have complete control of La Trinite and they are quite comfortable in there position.
		<br/>
		<br/>c. Strength:
		<br/>
		<br/> Approximately a company and a two platoons with support from armour plus the HVT.
		<br/>
		<br/>d. Most Probable Course of Action
		<br/>
		<br/> Defend HVT and the town of <marker name='hvtloc'>La Trinite</marker> and the outlying areas.
		<br/>
		<br/>e. Most Dangerous Course of Action
		<br/>
		<br/> Call in armoured support and overwhelm our small force.
		<br/>
		<br/>2. Friendly Forces
		<br/>
		<br/>a. Composition:
		<br/>
		<br/> A light squad of quiet Spetznaz 
		<br/> 	8 men with Groza 7.62 SD rifles
		<br/>   	1 Medic
		<br/>   	1 Squad Lead
		<br/>   	2 Fire Team Leads
		<br/>   	4 Rifleman Anti-Tank
		<br/>
		<br/> One MI24 Hind and Crew
		<br/>   1 Pilot
		<br/>   1 Crewman
		<br/>
		<br/>b. Disposition:
		<br/>
		<br/> They are at the <marker name='base'>Russian Base</marker> in the south of the region.
		<br/> 
	
	"]];
	
	
	
};
case RESISTANCE:
{
};
case CIVILIAN:
{
};
};

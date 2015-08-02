/*Sample Parameter Handling script.
by: His Gloriousness thealmightyn00b
Using this script is easy, and I've tried to comment everything.
questions and concerns are welcome.
*/


//setting sample variable to the passed value from parameters, you can change the variable _sample's name (remember to change all occurrences), but nothing else.
_sample = _this select 0; 

//True Condition
if (_sample == 1) then 
{
systemChat"On";//your code here
//I recommend calling a separate script to do your actions and not writing your code in here
//like: []execVM "scripts\yourcoolscript.sqf"
};

//False Condition
if (_sample == 0) then 
{
systemChat"Off";//your alternate code here
//I recommend calling a separate script to do your actions and not writing your code in here
//like: []execVM "scripts\yourcoolscript.sqf"
};
var file;
var arr1 = undefined;
var arr2 = undefined;
var arr3 = undefined;
var Slot1, Slot2, Slot3;

if (file_exists(SAVEFILE)) 
{
	file = file_text_open_read(SAVEFILE);
	Slot1 = file_text_read_string(file);
	file_text_readln(file);
	Slot2 = file_text_read_string(file);
	file_text_readln(file);
	Slot3 = file_text_read_string(file);
	file_text_close(file);
	arr1 = SplitString(Slot1,"=");
	arr2 = SplitString(Slot2,"=");
	arr3 = SplitString(Slot3,"=");
	Slot1 = arr1[1];
	Slot2 = arr2[1];
	Slot3 = arr3[1];
}
else
{
	file = file_text_open_write(SAVEFILE);
	file_text_write_string(file,"Slot1=0");
	file_text_writeln(file);
	file_text_write_string(file,"Slot2=0");
	file_text_writeln(file);
	file_text_write_string(file,"Slot3=0");
	file_text_close(file);
	Slot1 = "0";
	Slot2 = "0";
	Slot3 = "0";
}

if (Slot1 == "0" and Slot2 == "0" and Slot3 == "0")
{
	return false;
}
else
{
	return true;	
}
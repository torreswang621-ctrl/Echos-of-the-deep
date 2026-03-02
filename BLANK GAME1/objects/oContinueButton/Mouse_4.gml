
audio_stop_all();
if(global.progress == 1)
{
	room_goto(D_Game);
}
else if(global.progress == 2)
{
	room_goto(G_Plat_1);
}
else if(global.progress == 3)
{
	room_goto(J_Clicker);
}
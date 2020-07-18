/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(interact2) && CanGoBack)
{
	ChangeMusicOrSound(1,2);
	SlideTransition(TRANS_MODE.GOTO, oTransition.fromWhere);
}
// No evento Step do obj_videointro
if (timer > 0)
{
    timer -= 1;
}

if (timer == 0)
{
    room_goto(menu);
}
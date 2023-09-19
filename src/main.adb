with Blinker;
--  with Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

with Last_Chance_Handler; pragma Unreferenced (Last_Chance_Handler);

procedure Main is
--     Counter : Integer := 0;
   Period : constant Time_Span := Milliseconds (1000);

   Next_Release : Time := Clock;
begin

   loop
      Blinker.Set_LED;
    --    Ada.Text_IO.Put_Line ("Semihosting test! Counter = " & Integer'Image(Counter));
    --    Counter := Counter + 1;

      Next_Release := Next_Release + Period;
      delay until Next_Release;

      Blinker.Reset_LED;

      Next_Release := Next_Release + Period;
      delay until Next_Release;
   end loop;

end Main;

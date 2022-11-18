pragma Ada_2012;
separate (Blinker)
procedure Toggle_LED is
begin
   pragma Compile_Time_Warning (Standard.True, "Toggle_LED unimplemented");
   raise Program_Error with "Unimplemented procedure Toggle_LED";
end Toggle_LED;

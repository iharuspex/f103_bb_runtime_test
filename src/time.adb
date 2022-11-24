with Ada.Interrupt.Names;

package body Time is
   
   procedure Delay_Ms (Period_MS : Natural) is
      
   begin
      null;
   end Delay_Ms;
   
   protected body Sys_Tick is
      
   end Sys_Tick;
--  
--  private
--     Tick : Natural;
   
end Time;

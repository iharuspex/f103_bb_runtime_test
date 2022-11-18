with STM32_SVD.GPIO; use STM32_SVD.GPIO;
with STM32_SVD.RCC; use STM32_SVD.RCC;
with STM32_SVD.AFIO; use STM32_SVD.AFIO;

package body Blinker is

   
   procedure Initialize;
   
   ----------------
   -- Toggle_LED --
   ----------------

   procedure Set_LED is
   begin
      GPIOB_Periph.BSRR.BS.Arr (2) := 1;
   end Set_LED;
   
   procedure Reset_LED is
   begin
      GPIOB_Periph.BSRR.BR.Arr (2) := 1;
   end Reset_LED;
   
   
   procedure Initialize is
   begin
      RCC_Periph.APB2ENR.IOPBEN := 1;
      AFIO_Periph.MAPR.SWJ_CFG := 1;
      
      GPIOB_Periph.CRL.MODE2 := 1;
      GPIOB_Periph.CRL.CNF2 := 0;
   end Initialize;

begin
   Initialize;
end Blinker;

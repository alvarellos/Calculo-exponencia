with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Calcular_Exponenciacion is

----------------------------------------------------------------------

   function Exponenciacion (Base, Exponente : Natural) return Natural is

   -- Pre : Base /= 0 ó Exponente /= 0
   -- Pos : calcula la base elevado a exponente

   Resultado : Natural;

      begin
         if Exponente = 0 then
            Resultado := 1;
         else Resultado := Base * Exponenciacion (Base, Exponente-1);
         end if;
         return Resultado;
   end Exponenciacion;

-------------------------------------------------------------------------

Base_Elegida : Natural;
Exponente_Elegido : Natural;
Resultado_Potencia : Natural;

begin
   Put ("Introduce una base ");
   Get (Base_Elegida);
   Put ("Introduce un exponente ");
   Get (Exponente_Elegido);
   Resultado_Potencia := Exponenciacion (Base_Elegida, Exponente_Elegido);
   Put ("El resultado es ");
   New_Line;
   Put (Resultado_Potencia);
   Skip_Line (2);


end Calcular_Exponenciacion;
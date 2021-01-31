with Ada.Text_IO;
use Ada.Text_IO;

procedure bubble is

type Sort_Array is Array (Natural range <>) of Integer;

procedure Bubble_Sort (A : in out Sort_Array) is
    Sort : Integer;
begin
    for I in reverse A'Range loop
       for J in A'First .. I loop
          if A(I) < A(J) then
             Sort := A(J);
             A(J) := A(I);
             A(I) := Sort;
          end if;
       end loop;
    end loop;
end Bubble_Sort;

 A: Sort_Array := (3,6,8,2,1,7);

 begin
  New_Line;
  put("Array before sorting: ");
   for I in A'Range loop
      Put (Integer'Image (A (I)));
   end loop;
   New_Line;

   New_Line;
   put("Array after sorting: ");
   Bubble_Sort(A);
   for J in A'Range loop
      Put (Integer'Image (A (J)));
   end loop;
   New_Line;
   New_Line;

 end bubble;

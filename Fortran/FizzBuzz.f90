program FizzBuzz
    implicit none
    integer :: i = 1
     
    do i = 1, 100
        if(((Mod(i,3)==0)) .and. ((Mod(i,5) == 0)))then
        print *, "fizzbuzz"
        elseif((Mod(i,3)==0))then
            print *, "fizz"
        elseif((Mod(i,5)==0))then
            print *, "buzz"
        else
            print *, i
        endif
                
    end do
    end program FizzBuzz
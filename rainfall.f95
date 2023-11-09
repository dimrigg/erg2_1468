program rainfall
    implicit none
    integer :: i
    integer, dimension(5) :: rain
    character(len = 15), dimension(5) :: town
    open(1, file = 'data.txt', status = 'old')
    ! Diavazei mia grammh xwris arxikopoihsh timwn, wste na prosperasei ton titlo
    read(1,*) 

    ! Diavazei tis poleis kai ta noumera
    do i = 1,5
        read(1,*) town(i), rain(i)
    end do
    do i = 1,5
        write(*,*) town(i), rain(i)
    end do

end program rainfall
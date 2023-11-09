program rainfall
    implicit none
    ! s gia to megethos twn pinakwn
    integer :: i, s
    integer, dimension(50) :: rain
    character(len = 15), dimension(50) :: town
    integer, parameter :: Nmax = 50
    open(1, file = 'data.txt', status = 'old')
    ! Diavazei mia grammh xwris arxikopoihsh timwn, wste na prosperasei ton titlo
    read(1,*) 

    s = 0
    do i=1,50
        rain(i) = 0
        town(i) = ""
    end do
    do while (s <= Nmax)
        s = s + 1
        read(1,*,end=10)
    end do
    10 rewind(1)
    read(1,*)
    ! Diavazei tis poleis kai ta noumera
    do i = 1,s-2
        read(1,*) town(i), rain(i)
    end do
    do i = 1,s-2
        write(*,*) town(i), rain(i)
    end do
    close(1)
end program rainfall
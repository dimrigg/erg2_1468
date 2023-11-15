program rainfall
    implicit none
    ! s gia to megethos twn pinakwn
    integer :: s
    integer, parameter :: Nmax = 50
    integer, dimension(Nmax) :: rain
    character(len = 15), dimension(Nmax) :: town

    s = 0
    call sub(town, rain, Nmax, s)
    
end program rainfall

subroutine sub(T, R, Nmax, N)
    implicit none

    integer :: Nmax, N, i
    integer, dimension(Nmax) :: R
    character(len = 15), dimension(Nmax) :: T

    open(1, file = 'data.txt', status = 'old')
    ! Diavazei mia grammh xwris arxikopoihsh timwn, wste na prosperasei ton titlo
    read(1,*) 

    do i=1,50
        R(i) = 0
        T(i) = ""
    end do
    do while (N <= Nmax)
        N = N + 1
        read(1,*,end=10)
    end do
    10 rewind(1)
    read(1,*)
    ! Diavazei tis poleis kai ta noumera
    do i = 1,N-1
        read(1,*) T(i), R(i)
    end do
    do i = 1,N-1
        write(*,*) T(i), R(i)
    end do
    N = N-1
    write(*,*) "O Arithmos twn polewn einai ", N
    close(1)
end subroutine sub
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

function avg_rain (R, N, Nmax) result(a)
    implicit none
    integer, intent(in) :: Nmax, N
    integer :: i
    integer, dimension(Nmax), intent(in) :: R
    real :: a

    a = 0.0
    do i = 1,N
        a = a + R(i)*1.0
    end do
    
    a = a/(N*1.0)
end function avg_rain

program rainfall
    implicit none
    ! s gia to megethos twn pinakwn
    integer :: s
    real :: avg, avg_rain
    integer, parameter :: Nmax = 50
    integer, dimension(Nmax) :: rain
    character(len = 15), dimension(Nmax) :: town

    avg = 0.0
    s = 0
    call sub(town, rain, Nmax, s)
    avg = avg_rain(rain, s, Nmax)
    write(*,*) "Mesos oros broxoptwshs einai ", avg
    
end program rainfall
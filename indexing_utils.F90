module indexing_utils
    implicit none
    private
    public :: indlsev, indlsod

contains

    !> Returns index for even spherical harmonics [cite: 1]
    pure integer function indlsev(n, l, jbasev)
        integer, intent(in) :: n, l, jbasev
        indlsev = jbasev + (n - l) / 2 + 1
    end function indlsev

    !> Returns index for odd spherical harmonics [cite: 2]
    pure integer function indlsod(n, l, jbasod)
        integer, intent(in) :: n, l, jbasod
        indlsod = jbasod + (n - l) / 2 + 1
    end function indlsod

end module indexing_utils

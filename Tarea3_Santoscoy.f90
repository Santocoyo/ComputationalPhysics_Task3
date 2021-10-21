module funciones_mod
	implicit none
	
	private
	public :: rand01
	
	contains
	function X0(m,bL,bU) result (Xr)
	
		integer, intent(in) :: m
		real(8), intent(in), dimension(:) :: bL, bU
		real(8), dimension(m,size(bL)) :: Xr
		
		integer :: i,j, n
		
		n = size(bL)
		
		do i = 1, m
			do j = 1, n
				Xr(i,j) = bL(j) + rand01()*(bU(j) - bL(j))
			end do
		end do
		
	end function X0
	
	function rand01() result (fr)
		real(8) :: fr
		call random_number(fr)
	end function rand01
	
end module funciones_mod


program DEv1
	use funciones_mod
	implicit none
	
end program DEv1
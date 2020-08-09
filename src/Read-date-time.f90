 !--------------------------------------------------------
 Program main
 !--------------------------------------------------------
 !
 ! This program help us read the year,month and date from file 
 
 ! wjz 2020/8/9
 !
 implicit none
 !
 integer ::Year,Month,Date,hour,minute,second,i,j
 Character(len=120)  ::cline
 real    ::d
 !
 open(111,file='ex1',status='old')
 do
   read(111,'(a)',iostat=i) cline
   if(i /= 0)exit
   do j=1,len_trim(cline)
      if( index ('/-:', cline(j:j) ) > 0) cline(j:j)=' '
   enddo
   !
   read(cline,*) Year,Month,Date,hour,minute,second,d
   write(*,'(6i5,2x,f3.1)') Year,Month,Date,hour,minute,second,d

 enddo
 close(111)

 End Program

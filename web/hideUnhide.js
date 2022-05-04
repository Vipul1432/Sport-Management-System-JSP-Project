function unhideStaffForm()
{
	if(document.querySelector('.none2'))
	 {
var classForm=document.querySelector('.none2');
   classForm.className="staffForm2";
	 }
	
	var classForm=document.querySelector('.staffForm');
    classForm.className="none1";

	
}
function unhideStaffForm2()
{
	 if(document.querySelector('.none1'))
		 {
	 var classForm=document.querySelector('.none1');
	    classForm.className="staffForm";
		 }
	var classForm2=document.querySelector('.staffForm2');
    classForm2.className="none2";

	
}
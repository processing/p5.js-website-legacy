	$("#filter-options :checkbox").click(function() 
		{
	       	$("#filter-list li").hide();
	       	$("#filter-options :checkbox:checked").each(function() 
	       	{
	           $("." + $(this).val()).fadeIn();
			});
	       
	        if($('#filter-options :checkbox').filter(':checked').length < 1) 
	        {
	        	$("#filter-list li").fadeIn();
	        	
	        }
	        
	    });

$( document ).ready(function() {
   
	listarPokemones();
	
	function listarPokemones(){
		
		$.ajax({
			url: 'listarpokemones',
			 async: false,
			type: "POST",
			success: function(respuesta) {
				
				var json=JSON.parse(respuesta);
				var pokemones=json.results;
				
				var cardhtml='';
				    cardhtml+='<h2>Listado de Pokemones </h2><br><div class="row mb-5">';

				  $.each(pokemones,function(index,item){
		              
					  cardhtml+='<div class="col-md-4">';
					  
					  var urlDetalle=item.url;
					  var nombrePokemon=item.name;
					  var description='';
					  var idpokemon=0;
					  var imagenjson="";
					  $.ajaxSetup({
						    async: false
						  });
					   $.getJSON(urlDetalle, function(jsondetalle) { 
					        if(jsondetalle!=null)
					        {
					        	idpokemon=jsondetalle.id;
					    		var urlpokemon=jsondetalle.varieties[0].pokemon.url;
					    		description=jsondetalle.flavor_text_entries[0].flavor_text;
					    		 $.ajaxSetup({
					    			    async: false
					    			  });
					    		   $.getJSON(urlpokemon, function(jsonimagen) { 
								        if(jsonimagen!=null)
								        {
								    		 imagenjson=jsonimagen.sprites.back_default;
								    		 
								    	
								        }
								        });
					        } });
					   urlonlcik=urlDetalle;
					   cardhtml+='<div class="card">';
					   cardhtml+='<img src="'+imagenjson+'" class="card-img-top" alt="...">';
					   cardhtml+='<div class="card-body">';
					   cardhtml+='<h5 class="card-title">'+nombrePokemon+'</h5>';
					   cardhtml+='<p class="card-text">'+description+'</p>';
					   cardhtml+='	<a href="detallepokemon/'+idpokemon+'" class="btn btn-sm btn-primary">Go somewhere</a>';
					   cardhtml+='</div>';
					   cardhtml+='</div>';
					   cardhtml+='</div><br>';
					 
				  });
				
				  cardhtml+='<div>';  
				  $(".container").html(cardhtml);

			},
			error: function() {
		        console.log("No se ha podido obtener la información");
		    }
		});


		
	}
	
	

});

function detallePokemon(link){
	
	alert(link);
	
	$.ajax({
		url: 'detallepokemon',
		 async: false,
		 type: "GET",
		success: function(respuesta) {
			
			 

		},
		error: function() {
	        console.log("No se ha podido obtener la información");
	    }
	});


	
}


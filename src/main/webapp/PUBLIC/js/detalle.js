
$( document ).ready(function() {
   
	var idpokemon = $("#idpokemon").val();
	cargarDetalle(idpokemon);
	
	
	function cargarDetalle(idpokemon){
		
		$.ajax({
			url: 'https://pokeapi.co/api/v2/pokemon/'+idpokemon,
			 async: false,
			type: "GET",
			success: function(respuesta) {
				
				var pokemones=respuesta.results;
				var imagen=respuesta.sprites.back_default;
				var namepokemon=respuesta.name;
				var habilidadesJson=respuesta.abilities;
				var cantidadHb=habilidadesJson.length;
				var habilidades='';
				for(var i=0; i<cantidadHb;i++){
					habilidades+=","+habilidadesJson[i].ability.name;	
				}
				var movesJson=respuesta.moves;
				var cantidadMv=movesJson.length;
				var moves='';
				for(var i=0; i<cantidadMv;i++){
					moves+=","+movesJson[i].move.name;	
				}
				
				var statsJson=respuesta.stats;
				var cantidadSta=statsJson.length;
				var stats='';
				for(var i=0; i<cantidadSta;i++){
					stats+=","+statsJson[i].base_stat;	
				}
				
				moves=moves.substr(1)
				
				var cardhtml='';
				    cardhtml+='<h2> Detalle de Pokemon- </h2><br>';
				    cardhtml+='<div class="col-md-4">';
				    cardhtml+='</div>';
				    cardhtml+='<div class="col-md-4">';
				   cardhtml+='<div class="card">';
				   cardhtml+='<img src="'+imagen+'" class="card-img-top" alt="...">';
				   cardhtml+='<div class="card-body">';
				   cardhtml+='<h5 class="card-title"><ul>'+namepokemon+'</ul></h5>';
				   cardhtml+='<h1 class="card-text">Habilidades :</h1><h5>'+habilidades+'</h5><br>';
				   cardhtml+='<h1 class="card-text"> Moves :</h1><h5>'+moves+'</h5><br>';
				   cardhtml+='<h1 class="card-text"> Especie :</h1><h5>'+respuesta.species.name+'</h5><br>';
				   cardhtml+='<h1 class="card-text"> Estadisticas :</h1><h5>'+stats+'</h5><br>';
				   cardhtml+='</div>';
				   cardhtml+='</div>';
				   cardhtml+='</div><br>';
				   cardhtml+='<div class="col-md-4">';
				    cardhtml+='</div>';
				   cardhtml+='<div>';  
				  $(".container").html(cardhtml);
					 

			},
			error: function() {
		        console.log("No se ha podido obtener la información");
		    }
		});

		
	}
});
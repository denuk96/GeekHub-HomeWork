def save_to_yaml
	last_save = [ "pet_name" => $cat_name, 
				  "health" => $health,
				  "hearty" => $hearty,
				  "waterfull" => $waterfull,
				  "peppiness" => $peppiness,
				  "morale" => $morale,
				  "killingNature" => $killingNature,
				  "purity" => $purity,
				  "passageOfTime" => $passageOfTime,
				  "chance" => $chance,
				  "dead" => $dead ]
	File.open("lastSave.yaml", "w") { |file| file.write(last_save.to_yaml) }	
end

def load_stats
	stats = YAML.load(File.open('basic.yaml'))	
	stats[:pet_name] = params[:new_name]
	$cat_name =        stats[:pet_name]
  	$health =          stats["health"]
 	$hearty =          stats["hearty"]
	$waterfull =       stats["waterfull"]
	$peppiness =       stats["peppiness"] 
	$morale =          stats["morale"] 
	$killingNature =   stats["killingNature"]
	$purity =          stats["purity"]
	$passageOfTime =   stats["passageOfTime"]
	$chance = 		   stats["chance"]
	$dead =			   stats["dead"]	
end

def load_last_save
	stats = YAML.load(File.open('lastSave.yaml'))	
	$cat_name =        stats[0]["pet_name"]
    $health =          stats[0]["health"]
 	$hearty =          stats[0]["hearty"]
	$waterfull =       stats[0]["waterfull"]
	$peppiness =       stats[0]["peppiness"] 
	$morale =          stats[0]["morale"] 
	$killingNature =   stats[0]["killingNature"]
	$purity =          stats[0]["purity"]
	$passageOfTime =   stats[0]["passageOfTime"]
	$chance = 		   stats[0]["chance"]
	$dead =			   stats[0]["dead"]	
end
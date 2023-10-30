Gossip.destroy_all
User.destroy_all

10.times do |index|
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

gossips_data = [
  {prenom: "Sophie", lieu: "Paris", content: "Sophie a été vue en train de déguster une délicieuse baguette au fromage dans un café chic de Montmartre, en compagnie d'un artiste de rue qui prétendait être son âme sœur."},
  {prenom: "Pierre", lieu: "Provence", content: "Pierre aurait organisé une fête de vendange secrète dans son vignoble en Provence, où les invités auraient dansé toute la nuit sous les étoiles tout en savourant du vin fait maison."},
  {prenom: "Éléonore", lieu: "Château de la Loire", content: "On dit qu'Éléonore a découvert une vieille lettre d'amour datant du 18e siècle cachée dans un tiroir du château de la Loire de sa famille, ce qui a ravivé les rumeurs de trésors perdus."},
  {prenom: "Olivier", lieu: "Côte d'Azur", content: "Olivier aurait été aperçu en train de bronzer sur la plage de Saint-Tropez en compagnie d'une star de cinéma internationale, alimentant ainsi les rumeurs d'une nouvelle romance."},
  {prenom: "Marie", lieu: "Lyon", content: "Marie a été aperçue en train de manger une quenelle..."},
  {prenom: "Camille", lieu: "Normandie", content: "Camille aurait participé à une compétition de dégustation de fromage de Normandie et aurait remporté le titre de 'Meilleur dégustateur de camembert'."},
  {prenom: "Antoine", lieu: "Marseille", content: "Antoine aurait organisé une grande partie de pétanque en plein cœur de Marseille, où les participants se sont affrontés pour le prestigieux trophée de la 'Boule d'Or'."},
  {prenom: "Margaux", lieu: "Bordeaux", content: "Margaux aurait été repérée en train de déguster des vins rares dans un château viticole de Bordeaux, ce qui a suscité des spéculations sur ses goûts exquis."},
  {prenom: "Luc", lieu: "Lyon", content: "Luc aurait eu une altercation publique avec un chef étoilé célèbre, remettant en question la qualité de la cuisine française traditionnelle."},
  {prenom: "Isabelle", lieu: "Bretagne", content: "Isabelle aurait organisé une fête costumée sur la plage en Bretagne, où les invités ont revêtu des tenues de marins et ont dansé au son de la musique celtique."},
  {prenom: "Henri", lieu: "Versailles", content: "Henri aurait prétendument découvert un passage secret caché derrière une grande glace dans le château de Versailles, alimentant les rumeurs de trésors royaux perdus."}
]

gossips_data.each do |gossip_data|
  Gossip.create!(
    title: "#{gossip_data[:prenom]} #{Faker::Name.last_name}",
    content: gossip_data[:content],
    user: User.all.sample
  )
end
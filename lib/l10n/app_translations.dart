import 'package:flutter/foundation.dart' show immutable;
import 'package:get/get.dart';

///This is the translation core...
@immutable
class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        //The translation languages are English - French - German - Portuguese - Spanish

        ///Add key-value pair like so e.g.
        ///'title' : 'Easy translation translations',
        ///'appbar1' : 'just testing',
        ///where it is the title & appbar1 we are going to use not the actual
        ///english sentence

        //English
        'en_US': {
          'industry':'industry',
          'Machines for production, production lines, equipment for industry':'Machines for production, production lines, equipment for industry',
          'Sikatronics equipment assists you technically and commercially to have new or used machines for production, production lines and equipment in the field of agri-food, electronics, metal and forging, packaging and conditioning, pharmaceutical, chemical, textiles, printing machines, wood, plastic, industrial equipment,... and any machine or equipment of your field':'Sikatronics equipment assists you technically and commercially to have new or used machines for production, production lines and equipment in the field of agri-food, electronics, metal and forging, packaging and conditioning, pharmaceutical, chemical, textiles, printing machines, wood, plastic, industrial equipment,... and any machine or equipment of your field',
          'logistics & machinery':'logistics & machinery',
          'Truck, machinery, tractors, commercial vehicle, trailer, semi trailer.':'Truck, machinery, tractors, commercial vehicle, trailer, semi trailer.',
          'Sikatronics equipment assists you technically and commercially to have new or used tractors,trucks,commercial vehicle,'
              ' machinery, roller, cranes,bulldozer,tractor agricultural, forklift ,generator,... and any logistic or machinery of your field':'Sikatronics equipment assists you technically and commercially to have new or used tractors,trucks,commercial vehicle,'
              ' machinery, roller, cranes,bulldozer,tractor agricultural, forklift ,generator,... and any logistic or machinery of your field',
          'transport':'transport',
          'Bus, Car, Moto':'Bus, Car, Moto',
          'Sikatronics equipment assists you technically and commercially to have new or used car, bus or motorbike of any brand':'Sikatronics equipment assists you technically and commercially to have new or used car, bus or motorbike of any brand',
          'construction':'construction',
          'Machines, equipments':'Machines, equipments',
          'Sikatronics equipment assists you technically and commercially to have new or used equipments, machines, machineries in the construction field, like concrete machines, blocks and bricks machines,... and any machines you need.':'Sikatronics equipment assists you technically and commercially to have new or used equipments, machines, machineries in the construction field, like concrete machines, blocks and bricks machines,... and any machines you need.',
           'agriculture & breeding':'agriculture & breeding',
          'Machines, engines,equipements':'Machines, engines,equipements',
          'Sikatronics equipment assists you technically and commercially to have new or used equipments ,machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed':'Sikatronics equipment assists you technically and commercially to have new or used equipments ,machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed',
          'trading':'trading',
          'Agri-food,construction,raw materials for insdustries':'Agri-food,construction,raw materials for insdustries',
          'Sikatronics equipment assists you technically and commercially to have new or used equipments ,'
              'machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed':'Sikatronics equipment assists you technically and commercially to have new or used equipments ,'
              'machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed',
          'maintenance':'maintenance',
          'Maintenance of machines or equivalence':'Maintenance of machines or equivalence',
          'Sikatronics equipment assists you technically to do maintenance in your equipment and machines. '
              'You fit any malfunction.':'Sikatronics equipment assists you technically to do maintenance in your equipment and machines. '
              'You fit any malfunction.',
          'other services':'other services',
          'we provide diverse sets of services to our clients, get in touch to know more':'we provide diverse sets of services to our clients, get in touch to know more',
          'other services ...':'other services ...',






          'screen01BodyText':
              'Companion of entrepreneur\'s. We provide your machines, equipment, raw materials and maintenance for your business.',
          'screen01ButtonText': 'Choose language',
          'screen02HeadText': 'Welcome to Sikatronicks Equipment',
          'screen02BodyText':
              'Companion of entrepreneur\'s. We provide your machines, equipment, raw materials and maintenance for your business.',
          'continueText': 'Continue',
          'screen03HeadText': 'Search for  Machines and Equipement',
          'screen03BodyText':
              'Sikatronics Equipment assist you for technical studies, Purchase, Delivery and Installation of equipment for your business.',
          'screen04HeadText':
              'Find Machines, Machineries, Vehicles, Raw Material and Maintenance of your business',
          'screen04BodyText':
              'Contact Sikatronics Equipment support team and provide details of the Machine, Equipment, Raw material or Machinery you need for your business.',
          'screen05HeadText': 'Get a Technical and Commercial Study.',
          'screen05BodyText':
              'We will study your request technically and propose you the best equipment for your project.',
          'screen06HeadText':
              'We purchase, deliver, Install and do the Maintenance',
          'screen06BodyText':
              'Sikatronics Equipment handles the purchase, installation, delivery and maintenance of the equipment required for your project.',
          'screen06ButtonText': 'Ready',
          'successfullScreenHeadText1': 'Thank You!',
          'successfullScreenHeadText2': 'Ouups',
          'successfullScreenBodyText1':
              'Your Request has  been successfully sent',
          'successfullScreenBodyText2':
              'Your Request has not been successfully sent please try again',
          'successfullScreenButtonText1': 'Resend request',
          'successfullScreenButtonText2': 'Go home page',
          'sendRequestPageHeadText': 'SENT US A REQUEST',
          'sendRequestPageBodyText':
              'Machine Name/Vehicle/Equipment/Merchandise',
          'sendRequestPageName': 'Enter the Name',
          'sendRequestPageCall': 'Availability for call',
          'sendRequestPageEmail': 'Email',
          'sendRequestPageEnterEmail': 'Enter your Email',
          'sendRequestPageDesc': 'Description',
          'sendRequestPageProdDetails': 'Enter your Product Details',
          'sendRequestPageSend': 'Send',
          'sendRequestSnackbarTitle': 'an error has been occured',
          'sendRequestSnackbarMsg': 'you have to fill all the fields properly',
          'sendRequestMachineName': 'Enter Machine Name.',
          'sendRequestphonenumber': 'Enter Phone Number',
          'Phone Number': 'Phone Number',
          'registrationCountry': 'Country',
          'registrationEnterCompanyName': 'Enter company name',
          'registrationCompanyName': 'Company name',
          'registrationLastName': 'Last name',
          'registrationFirstName': 'First Name',
          'registrationEnterFirstName': 'Enter first name',
          'learnMoreScreenCat': 'category',
          'learnMoreScreenLearn': 'learn More',
          'learnMoreScreenBackHome': 'Back to Home',
          'listOfProdHi': "Hi",
          'listOfProdWhatYouNeed': "which equipment do you need?",
        },

        //French
        'fr_FR': {
          'industry':'industrie',
          'Machines for production, production lines, equipment for industry':'Machines de production, lignes de production, équipements pour l\'industrie',

          'Sikatronics equipment assists you technically and commercially to have new or used machines for production,'
              ' production lines and equipment in the field of agri-food, electronics, metal and forging, packaging and '
              'conditioning, pharmaceutical, chemical, textiles, printing machines, wood, plastic, industrial equipment,... '
              'and any machine or equipment of your field'
              :'Les équipements Sikatronics vous assistent techniquement et commercialement pour avoir des machines neuves ou d\'occasion pour la production,'
        ' des lignes de production et des équipements dans le domaine de l\'agro-alimentaire, de l\'électronique, de la métallurgie et de la forge, de l\'emballage et '
        'conditionnement, pharmaceutique, chimique, textile, machines d\'impression, bois, plastique, équipements industriels,...'
    'et toute machine ou équipement de votre domaine',

          'logistics & machinery':'logistique et machinerie',

          'Truck, machinery, tractors, commercial vehicle, trailer, semi trailer.':'Camion, machinerie, tracteurs, véhicule utilitaire, remorque, semi-remorque.',

          'Sikatronics equipment assists you technically and commercially to have new or used tractors,trucks,commercial vehicle,'
              ' machinery, roller, cranes,bulldozer,tractor agricultural, forklift ,generator,... and any logistic or'
              ' machinery of your field':
          'Les équipements Sikatronics vous assistent techniquement et commercialement pour disposer de tracteurs, camions, véhicules utilitaires neufs ou d\'occasion,'
          ' engins, compacteur, grues, bulldozer, tracteur agricole, chariot élévateur , groupe électrogène,... et toute logistique ou'
              ' machines de votre domaine',

          'transport':'le transport',
          'Bus, Car, Moto':'Autobus, Voiture, Moto',
          'Sikatronics equipment assists you technically and commercially to have new or used car, bus or '
              'motorbike of any brand'
              :'Les équipements Sikatronics vous assistent techniquement et commercialement pour avoir une voiture, un bus ou un '
              'moto de toute marque',

          'construction':'construction',
          'Machines, equipments':'Machines, équipements',

          'Sikatronics equipment assists you technically and commercially to have new or used equipments, '
              'machines, machineries in the construction field, like concrete machines,'
              ' blocks and bricks machines,... and any machines you need.'
              :'Sikatronics equipment vous accompagne techniquement et commercialement pour disposer d\'équipements neufs ou d\'occasion, '
              'machines, machines dans le domaine de la construction, comme les machines à béton,'
              'blocs et machines à briques,... et toutes les machines dont vous avez besoin.',

          'agriculture & breeding':'agriculture & élevage',

          'Machines, engines,equipements':'Machines, moteurs, équipements',

          'Sikatronics equipment assists you technically and commercially to have new or used equipments ,'
              'machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed':
          'Les équipements Sikatronics vous assistent techniquement et commercialement pour disposer d\'équipements neufs ou d\'occasion,'
              'machine pour tout produit que vous cultivez (manioc, maïs, arachide, cacao, café, riz, huile...) ou élevez',

          'trading':'commerce',
          'Agri-food,construction,raw materials for insdustries':'Agroalimentaire, construction, matières premières pour les industries',

          'Sikatronics equipment assists you technically and commercially to have new or used equipments ,'
              'machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed'
              :'Les équipements Sikatronics vous assistent techniquement et commercialement pour disposer d\'équipements neufs ou d\'occasion,'
              'machine pour tout produit que vous cultivez (manioc, maïs, arachide, cacao, café, riz, huile...) ou élevez',
          'maintenance':'maintenance',
          'Maintenance of machines or equivalence':'Maintenance des machines ou équivalence',
          'Sikatronics equipment assists you technically to do maintenance in your equipment and machines. '
              'You fit any malfunction.'
              :'Les équipements Sikatronics vous assistent techniquement pour effectuer la maintenance de vos équipements et machines. '
              'Vous correspondez à tout dysfonctionnement.',

          'other services':'autres services',
          'we provide diverse sets of services to our clients, get in touch to know more'
              :'nous fournissons divers ensembles de services à nos clients, contactez-nous pour en savoir plus',
          'other services ...':'autres services ...',








          'screen01BodyText':
              'Compagnon d\'entrepreneur. Nous fournissons vos machines, équipements, matières premières et maintenance pour votre entreprise.',
          'screen01ButtonText': 'Choisissez la langue',
          'screen02HeadText': 'Bienvenue chez Sikatronics Equipment',
          'screen02BodyText':
              'Compagnon d\'entrepreneur. Nous fournissons vos machines, équipements, matières premières et maintenance pour votre entreprise.',
          'continueText': 'Continuer',
          'screen03HeadText': 'Rechercher des machines et équipements',
          'screen03BodyText':
              'Sikatronics Equipment vous assiste pour les études techniques, l\'achat, la livraison et l\'installation d\'équipements pour votre entreprise.',
          'screen04HeadText':
              'Trouvez des machines, des véhicules, des matières premières et la maintenance de votre entreprise',
          'screen04BodyText':
              'Contactez l\'équipe d\'assistance de Sikatronics Equipment et fournissez les détails de la machine, de l\'équipement, de la matière première ou de la machinerie dont vous avez besoin pour votre entreprise.',
          'screen05HeadText': 'Obtenez une étude technique et commerciale.',
          'screen05BodyText':
              'Nous étudierons techniquement votre demande et vous proposerons le meilleur équipement pour votre projet.',
          'screen06HeadText':
              'Nous achetons, livrons, installons et effectuons la maintenance',
          'screen06BodyText':
              'Sikatronics Equipment s\'occupe de l\'achat, de l\'installation, de la livraison et de la maintenance des équipements nécessaires à votre projet.',
          'screen06ButtonText': 'Prêt',
          'successfullScreenHeadText1': 'Merci!!',
          'successfullScreenHeadText2': 'Oups',
          'successfullScreenBodyText1':
              'Votre requête a été envoyée avec succès',
          'successfullScreenBodyText2':
              'Votre demande n\'a pas été envoyée avec succès, veuillez réessayer',
          'successfullScreenButtonText1': 'Renvoyer la demande',
          'successfullScreenButtonText2': 'Aller à la page d\'accueil',
          'sendRequestPageHeadText': 'ENVOYEZ-NOUS UNE DEMANDE',
          'sendRequestPageBodyText':
              'Nom de la machine/véhicule/équipement/marchandise',
          'sendRequestPageName': 'Entrez le nom',
          'sendRequestPageCall': 'Disponibilité pour appel',
          'sendRequestPageEmail': 'E-mail',
          'sendRequestphonenumber': 'Entrez le numéro de téléphone',
          'sendRequestPageEnterEmail': 'Entrer votre Email',
          'sendRequestPageDesc': 'Description',
          'sendRequestPageProdDetails': 'Entrez les détails de votre produit',
          'sendRequestPageSend': 'Envoyer',
          'sendRequestSnackbarTitle': 'une erreur s\'est produite',
          'sendRequestSnackbarMsg':
              'vous devez remplir tous les champs correctement',
          'sendRequestMachineName': 'Saisissez le nom de l\'ordinateur.',
          'Phone Number': 'Numéro de téléphone',
          'registrationCountry': 'Pays',
          'registrationEnterCompanyName': 'Entrez le nom de l\'entreprise',
          'registrationCompanyName': 'Nom de l\'entreprise',
          'registrationLastName': 'Nom de famille',
          'registrationFirstName': 'Prénom',
          'registrationEnterFirstName': 'Entrez votre prénom',
          'learnMoreScreenCat': 'Catégorie',
          'learnMoreScreenLearn': 'apprendre encore plus',
          'learnMoreScreenBackHome': 'De retour à la maison',
          'listOfProdHi': "Salut",
          'listOfProdWhatYouNeed': "de quel équipement avez-vous besoin?",
        },

        //German
        'de_DE': {
          'industry':'Industrie',
          'Machines for production, production lines, equipment for industry':'Maschinen für die Produktion, Produktionslinien, Ausrüstung für die Industrie',

          'Sikatronics equipment assists you technically and commercially to have new or used machines for production,'
              ' production lines and equipment in the field of agri-food, electronics, metal and forging, packaging and '
              'conditioning, pharmaceutical, chemical, textiles, printing machines, wood, plastic, industrial equipment,... '
              'and any machine or equipment of your field'
              :'Sikatronics-Equipment unterstützt Sie technisch und wirtschaftlich dabei, neue oder gebrauchte Maschinen für die Produktion zu haben,'
              ' Produktionslinien und Ausrüstung in den Bereichen Lebensmittel, Elektronik, Metall und Schmieden, Verpackung und '
              'Konditionierung, Pharmazie, Chemie, Textilien, Druckmaschinen, Holz, Kunststoff, Industrieanlagen,... '
              'und jede Maschine oder Ausrüstung Ihres Bereichs',

          'logistics & machinery':'Logistik & Maschinen',

          'Truck, machinery, tractors, commercial vehicle, trailer, semi trailer.':'LKW, Maschinen, Traktoren, Nutzfahrzeuge, Anhänger, Auflieger.',

          'Sikatronics equipment assists you technically and commercially to have new or used tractors,trucks,commercial vehicle,'
              ' machinery, roller, cranes,bulldozer,tractor agricultural, forklift ,generator,... and any logistic or'
              ' machinery of your field':
          'Sikatronics-Geräte unterstützen Sie technisch und wirtschaftlich dabei, neue oder gebrauchte Traktoren, LKWs, Nutzfahrzeuge zu besitzen.'
          ' Maschinen, Walzen, Kräne, Planierraupen, landwirtschaftliche Traktoren, Gabelstapler, Generatoren, ... und alle logistischen oder'
              'Maschinerie Ihres Faches',

          'transport':'Transport',
          'Bus, Car, Moto':'Bus, Auto, Motorrad',
          'Sikatronics equipment assists you technically and commercially to have new or used car, bus or '
              'motorbike of any brand'
              :'Sikatronics-Geräte unterstützen Sie technisch und wirtschaftlich dabei, neue oder gebrauchte Autos, Busse oder '
              'Motorrad jeder Marke',

          'construction':'Konstruktion',
          'Machines, equipments':'Maschinen, Anlagen',

          'Sikatronics equipment assists you technically and commercially to have new or used equipments, '
              'machines, machineries in the construction field, like concrete machines,'
              ' blocks and bricks machines,... and any machines you need.'
              :'Sikatronics-Equipment unterstützt Sie technisch und kommerziell dabei, neue oder gebrauchte Geräte zu haben, '
              'Maschinen, Maschinen im Baubereich, wie Betonmaschinen'
              ' Block- und Ziegelmaschinen, ... und alle Maschinen, die Sie benötigen.',

          'agriculture & breeding':'Landwirtschaft & Zucht',

          'Machines, engines,equipements':'Maschinen, Motoren, Geräte',

          'Sikatronics equipment assists you technically and commercially to have new or used equipments ,'
              'machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed':
          'Sikatronics Equipment unterstützt Sie technisch und wirtschaftlich dabei, neue oder gebrauchte Geräte zu besitzen ,'
              'Maschine für jedes Produkt, das Sie anbauen (Maniok, Mais, Erdnuss, Kakao, Kaffee, Riz, Öl ...) oder züchten',

          'trading':'Handel',
          'Agri-food,construction,raw materials for insdustries':'Lebensmittel, Bau, Rohstoffe für die Industrie',

          'Sikatronics equipment assists you technically and commercially to have new or used equipments ,'
              'machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed'
              :'Sikatronics Equipment unterstützt Sie technisch und wirtschaftlich dabei, neue oder gebrauchte Geräte zu besitzen ,'
              'Maschine für jedes Produkt, das Sie anbauen (Maniok, Mais, Erdnuss, Kakao, Kaffee, Riz, Öl ...) oder züchten',
          'maintenance':'Wartung',
          'Maintenance of machines or equivalence':'Wartung von Maschinen oder Gleichwertigkeit',
          'Sikatronics equipment assists you technically to do maintenance in your equipment and machines. '
              'You fit any malfunction.'
              :'Sikatronics Equipment unterstützt Sie technisch bei der Wartung Ihrer Anlagen und Maschinen. '
  '»Sie passen auf jede Fehlfunktion.',

          'other services':'andere Dienstleistungen',
          'we provide diverse sets of services to our clients, get in touch to know more'
              :'Wir bieten unseren Kunden verschiedene Dienstleistungen an. Kontaktieren Sie uns, um mehr zu erfahren',
          'other services ...':'andere Dienstleistungen ...',





          'screen01BodyText':
              'Begleiter des Unternehmers. Wir stellen Ihre Maschinen, Anlagen, Rohstoffe und Wartung für Ihr Unternehmen bereit.',
          'screen01ButtonText': 'Sprache wählen',
          'screen02HeadText': 'Willkommen bei Sikatronics Equipment',
          'screen02BodyText':
              'Begleiter des Unternehmers. Wir stellen Ihre Maschinen, Anlagen, Rohstoffe und Wartung für Ihr Unternehmen bereit.',
          'continueText': 'Fortsetzen',
          'screen03HeadText': 'Suchen Sie nach Maschinen und Anlagen',
          'screen03BodyText':
              'Sikatronics Equipment unterstützt Sie bei technischen Studien, Kauf, Lieferung und Installation von Geräten für Ihr Unternehmen.',
          'screen04HeadText':
              'Finden Sie Maschinen, Maschinen, Fahrzeuge, Rohstoffe und Wartung Ihres Unternehmens',
          'screen04BodyText':
              'Wenden Sie sich an das Support-Team von Sikatronics Equipment und geben Sie Details zu den Maschinen, Geräten, Rohstoffen oder Maschinen an, die Sie für Ihr Unternehmen benötigen.',
          'screen05HeadText':
              'Holen Sie sich ein technisches und kaufmännisches Studium.',
          'screen05BodyText':
              'Wir werden Ihre Anfrage technisch prüfen und Ihnen die beste Ausrüstung für Ihr Projekt vorschlagen.',
          'screen06HeadText':
              'Wir kaufen, liefern, installieren und führen die Wartung durch',
          'screen06BodyText':
              'Sikatronics Equipment kümmert sich um den Kauf, die Installation, Lieferung und Wartung der für Ihr Projekt erforderlichen Ausrüstung.',
          'screen06ButtonText': 'Bereit',
          'successfullScreenHeadText1': 'Danke!',
          'successfullScreenHeadText2': 'Ouups',
          'successfullScreenBodyText1':
              'Ihre Anfrage wurde erfolgreich gesendet',
          'successfullScreenBodyText2':
              'Ihre Anfrage wurde nicht erfolgreich gesendet, bitte versuchen Sie es erneut',
          'successfullScreenButtonText1': 'Anfrage erneut senden',
          'successfullScreenButtonText2': 'Startseite gehen',
          'sendRequestPageHeadText': 'SCHICKEN SIE UNS EINE ANFRAGE',
          'sendRequestPageBodyText': 'Maschinenname/Fahrzeug/Ausrüstung/Ware',
          'sendRequestPageName': 'Geben Sie den Namen ein',
          'sendRequestPageCall': 'Verfügbarkeit für Anruf',
          'sendRequestPageEmail': 'Email',
          'sendRequestphonenumber': 'Telefonnummer eingeben',
          'sendRequestPageEnterEmail': 'Geben sie ihre E-Mail Adresse ein',
          'sendRequestPageDesc': 'Beschreibung',
          'sendRequestPageProdDetails': 'Geben Sie Ihre Produktdetails ein',
          'sendRequestPageSend': 'Schicken',
          'sendRequestSnackbarTitle': 'ein Fehler ist aufgetreten',
          'sendRequestSnackbarMsg': 'Sie müssen alle Felder richtig ausfüllen',
          'sendRequestMachineName': 'Geben Sie den Maschinennamen ein.',
          'Phone Number': 'Telefonnummer',
          'registrationCountry': 'Land des Wohnsitzes',
          'registrationEnterCompanyName': 'Geben Sie den Firmennamen ein',
          'registrationCompanyName': 'Name der Firma',
          'registrationLastName': 'Nachname',
          'registrationFirstName': 'Vorname',
          'registrationEnterFirstName': 'Bitte Vornamen eingeben',
          'learnMoreScreenCat': 'Kategorie',
          'learnMoreScreenLearn': 'Lern mehr',
          'learnMoreScreenBackHome': 'Zurück nach Hause',
          'listOfProdHi': "hallo",
          'listOfProdWhatYouNeed': "welche ausrüstung benötigst du?",
        },

        //Portuguese
        'pt_PT': {
          'industry':'indústria',
          'Machines for production, production lines, equipment for industry':'Máquinas para produção, linhas de produção, equipamentos para a indústria',

          'Sikatronics equipment assists you technically and commercially to have new or used machines for production,'
              ' production lines and equipment in the field of agri-food, electronics, metal and forging, packaging and '
              'conditioning, pharmaceutical, chemical, textiles, printing machines, wood, plastic, industrial equipment,... '
              'and any machine or equipment of your field'
              :'Os equipamentos Sikatronics auxiliam você técnica e comercialmente a ter máquinas novas ou usadas para produção,'
              ' linhas de produção e equipamentos na área de agro-alimentar, eletrônica, metal e forja, embalagem e '
              'condicionamento, farmacêutico, químico, têxtil, máquinas de impressão, madeira, plástico, equipamentos industriais,...'
              'e qualquer máquina ou equipamento de sua área',

          'logistics & machinery':'logística e maquinaria',

          'Truck, machinery, tractors, commercial vehicle, trailer, semi trailer.':'Caminhões, máquinas, tratores, veículos comerciais, reboques, semi-reboques.',

          'Sikatronics equipment assists you technically and commercially to have new or used tractors,trucks,commercial vehicle,'
              ' machinery, roller, cranes,bulldozer,tractor agricultural, forklift ,generator,... and any logistic or'
              ' machinery of your field':
          'Os equipamentos Sikatronics auxiliam você técnica e comercialmente a ter tratores novos ou usados, caminhões, veículos comerciais,'
  ' máquinas, rolo, guindastes, bulldozer, trator agrícola, empilhadeira, gerador,... e qualquer logística ou'
  ' máquinas do seu campo',

          'transport':'transporte',
          'Bus, Car, Moto':'ônibus, carro, moto',
          'Sikatronics equipment assists you technically and commercially to have new or used car, bus or '
              'motorbike of any brand'
              :'Os equipamentos Sikatronics auxiliam técnica e comercialmente você a ter carro novo ou usado, ônibus ou '
              'moto de qualquer marca',

          'construction':'construção',
          'Machines, equipments':'máquinas, equipamentos',

          'Sikatronics equipment assists you technically and commercially to have new or used equipments, '
              'machines, machineries in the construction field, like concrete machines,'
              ' blocks and bricks machines,... and any machines you need.'
              :'Os equipamentos Sikatronics auxiliam você técnica e comercialmente a ter equipamentos novos ou usados, '
              'máquinas, máquinas no campo da construção, como máquinas de concreto,'
              ' máquinas de blocos e tijolos,... e todas as máquinas que você precisa.',

          'agriculture & breeding':'agricultura e criação',

          'Machines, engines,equipements':'Máquinas, motores, equipamentos',

          'Sikatronics equipment assists you technically and commercially to have new or used equipments ,'
              'machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed':
          'Os equipamentos Sikatronics auxiliam você técnica e comercialmente a ter equipamentos novos ou usados,'
              'máquina para qualquer produto que você cultive (mandioca,milho,amendoim,cacau,café,riz,óleo...) ou crie',

          'trading':'negociação',
          'Agri-food,construction,raw materials for insdustries':'Agro-alimentar, construção, matérias-primas para indústrias',

          'Sikatronics equipment assists you technically and commercially to have new or used equipments ,'
              'machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed'
              :'Os equipamentos Sikatronics auxiliam você técnica e comercialmente a ter equipamentos novos ou usados,'
              'máquina para qualquer produto que você cultive (mandioca,milho,amendoim,cacau,café,riz,óleo...) ou crie',
          'maintenance':'manutenção',
          'Maintenance of machines or equivalence':'Manutenção de máquinas ou equivalente',
          'Sikatronics equipment assists you technically to do maintenance in your equipment and machines. '
              'You fit any malfunction.'
              :'Os equipamentos Sikatronics te auxiliam tecnicamente na manutenção de seus equipamentos e máquinas. '
              'Você se encaixa em qualquer defeito.',

          'other services':'outros serviços',
          'we provide diverse sets of services to our clients, get in touch to know more'
              :'fornecemos diversos conjuntos de serviços aos nossos clientes, entre em contato para saber mais',
          'other services ...':'outros serviços ...',







          'screen01BodyText':
              'Companheiro de empresário. Fornecemos suas máquinas, equipamentos, matéria-prima e manutenção para o seu negócio.',
          'screen01ButtonText': 'Escolha o seu idioma',
          'screen02HeadText': 'Bem-vindo a Equipamentos Sikatronicks',
          'screen02BodyText':
              'Companheiro de empresário. Fornecemos suas máquinas, equipamentos, matéria-prima e manutenção para o seu negócio.',
          'continueText': 'Continuar',
          'screen03HeadText': 'Pesquisar Máquinas e Equipamentos',
          'screen03BodyText':
              'A Sikatronics Equipment auxilia você nos estudos técnicos, Compra, Entrega e Instalação de equipamentos para o seu negócio.',
          'screen04HeadText':
              'Encontre Máquinas, Maquinários, Veículos, Matéria Prima e Manutenção do seu negócio',
          'screen04BodyText':
              'Entre em contato com a equipe de suporte da Sikatronics Equipment e forneça detalhes da Máquina, Equipamento, Matéria-prima ou Maquinário que você precisa para o seu negócio.',
          'screen05HeadText': 'Obtenha um Estudo Técnico e Comercial.',
          'screen05BodyText':
              'Estudaremos tecnicamente o seu pedido e propomos-lhe o melhor equipamento para o seu projeto.',
          'screen06HeadText':
              'Compramos, entregamos, instalamos e fazemos a manutenção',
          'screen06BodyText':
              'A Sikatronics Equipment trata da compra, instalação, entrega e manutenção do equipamento necessário para o seu projeto.',
          'screen06ButtonText': 'Preparar',
          'successfullScreenHeadText1': 'Obrigada!',
          'successfullScreenHeadText2': 'Ouups',
          'successfullScreenBodyText1':
              'Sua solicitação foi enviada com sucesso',
          'successfullScreenBodyText2':
              'Sua Solicitação não foi enviada com sucesso por favor tente novamente',
          'successfullScreenButtonText1': 'Reenviar solicitação',
          'successfullScreenButtonText2': 'Ir para a página inicial',
          'sendRequestPageHeadText': 'ENVIOU-NOS UM PEDIDO',
          'sendRequestPageBodyText':
              'Nome da Máquina/Veículo/Equipamento/Mercadoria',
          'sendRequestPageName': 'Digite o nome',
          'sendRequestphonenumber': 'Digite o número de telefone',
          'sendRequestPageCall': 'Disponibilidade para chamada',
          'sendRequestPageEmail': 'E-mail',
          'sendRequestPageEnterEmail': 'Digite seu e-mail',
          'sendRequestPageDesc': 'Descrição',
          'sendRequestPageProdDetails': 'Insira os detalhes do seu produto',
          'sendRequestPageSend': 'Mandar',
          'sendRequestSnackbarTitle': 'ocorreu um erro',
          'sendRequestSnackbarMsg':
              'você tem que preencher todos os campos corretamente',
          'sendRequestMachineName': 'Digite o nome da máquina.',
          'Phone Number': 'Número de telefone',
          'registrationCountry': 'país de residência',
          'registrationEnterCompanyName': 'Digite o nome da empresa',
          'registrationCompanyName': 'Nome da empresa',
          'registrationLastName': 'Último nome',
          'registrationFirstName': 'Primeiro nome',
          'registrationEnterFirstName': 'Introduza o primeiro nome',
          'learnMoreScreenCat': 'categoria',
          'learnMoreScreenLearn': 'Saber mais',
          'learnMoreScreenBackHome': 'Voltar para casa',
          'listOfProdHi': "Oi",
          'listOfProdWhatYouNeed': "qual equipamento você precisa?",
        },

        //Spanish
        'es_ES': {
          'industry':'industria',
          'Machines for production, production lines, equipment for industry':'Máquinas para la producción, líneas de producción, equipos para la industria',

          'Sikatronics equipment assists you technically and commercially to have new or used machines for production,'
              ' production lines and equipment in the field of agri-food, electronics, metal and forging, packaging and '
              'conditioning, pharmaceutical, chemical, textiles, printing machines, wood, plastic, industrial equipment,... '
              'and any machine or equipment of your field'
              :'Los equipos de Sikatronics te asiste técnica y comercialmente para tener máquinas nuevas o usadas para producción,'
              ' Líneas y equipos de producción en el campo de la agroalimentación, electrónica, metal y forja, embalaje y '
              'acondicionamiento, farmacéutico, químico, textil, máquinas de impresión, madera, plástico, equipos industriales,...'
              'y cualquier máquina o equipo de su campo',

          'logistics & machinery':'logística y maquinaria',

          'Truck, machinery, tractors, commercial vehicle, trailer, semi trailer.':'Camión, maquinaria, tractores, vehículo comercial, remolque, semirremolque.',

          'Sikatronics equipment assists you technically and commercially to have new or used tractors,trucks,commercial vehicle,'
              ' machinery, roller, cranes,bulldozer,tractor agricultural, forklift ,generator,... and any logistic or'
              ' machinery of your field':
          'Los equipos de Sikatronics lo ayudan técnica y comercialmente a tener tractores, camiones, vehículos comerciales, nuevos o usados.'
          'maquinaria, rodillo, grúas,bulldozer,tractor agrícola, montacargas,generador,... y cualquier logística o'
              'maquinaria de tu campo',

          'transport':'transporte',
          'Bus, Car, Moto':'autobús, coche, moto',
          'Sikatronics equipment assists you technically and commercially to have new or used car, bus or '
              'motorbike of any brand'
              :'Los equipos de Sikatronics lo asisten técnica y comercialmente para tener un automóvil, autobús o \'nuevo o usado\'.'
          'moto de cualquier marca',

          'construction':'construcción',
          'Machines, equipments':'Maquinas, equipos',

          'Sikatronics equipment assists you technically and commercially to have new or used equipments, '
              'machines, machineries in the construction field, like concrete machines,'
              ' blocks and bricks machines,... and any machines you need.'
              :'Los equipos Sikatronics te asiste técnica y comercialmente para tener equipos nuevos o usados,'
  'máquinas, maquinarias en el campo de la construcción, como máquinas de hormigón,'
 ' Máquinas de bloques y ladrillos,... y cualquier máquina que necesites.',

          'agriculture & breeding':'agricultura y cría',

          'Machines, engines,equipements':'Máquinas, motores, equipos',

          'Sikatronics equipment assists you technically and commercially to have new or used equipments ,'
              'machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed':
          'Equipos Sikatronics te asiste técnica y comercialmente para tener equipos nuevos o usados,'
              'máquina para cualquier producto que cultive (mandioca, maíz, maní, cacao, café, riz, aceite...) o cría',

          'trading':'comercio',
          'Agri-food,construction,raw materials for insdustries':'Agroalimentario,construcción,materias primas para la industria',

          'Sikatronics equipment assists you technically and commercially to have new or used equipments ,'
              'machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed'
              :'Equipos Sikatronics te asiste técnica y comercialmente para tener equipos nuevos o usados,'
              'máquina para cualquier producto que cultive (mandioca, maíz, maní, cacao, café, riz, aceite...) o cría',
          'maintenance':'mantenimiento',
          'Maintenance of machines or equivalence':'Mantenimiento de máquinas o equivalencia',
          'Sikatronics equipment assists you technically to do maintenance in your equipment and machines. '
              'You fit any malfunction.'
              :'Los equipos Sikatronics lo asisten técnicamente para realizar el mantenimiento de sus equipos y máquinas. '
              'Encajas en cualquier mal funcionamiento.',

          'other services':'otros servicios',
          'we provide diverse sets of services to our clients, get in touch to know more'
              :'proporcionamos diversos conjuntos de servicios a nuestros clientes, póngase en contacto para saber más',
          'other services ...':'otros servicios ...',






          'screen01BodyText':
              'Compañero del emprendedor. Proveemos sus máquinas, equipos, materias primas y mantenimiento para su negocio.',
          'screen01ButtonText': 'Elige lengua',
          'screen02HeadText': 'Bienvenidos a Equipos Sikatronicks',
          'screen02BodyText':
              'Compañero del emprendedor. Proveemos sus máquinas, equipos, materias primas y mantenimiento para su negocio.',
          'continueText': 'Continuar',
          'screen03HeadText': 'Búsqueda de Máquinas y Equipos',
          'screen03BodyText':
              'Sikatronics Equipment lo asiste en los estudios técnicos, Compra, Entrega e Instalación de equipos para su negocio.',
          'screen04HeadText':
              'Encuentre Máquinas, Maquinarias, Vehículos, Materia Prima y Mantenimiento de su negocio',
          'screen04BodyText':
              'Póngase en contacto con el equipo de soporte de Sikatronics Equipment y proporcione detalles de la Máquina, Equipo, Materia prima o Maquinaria que necesita para su negocio.',
          'screen05HeadText': 'Obtenga un Estudio Técnico y Comercial.',
          'screen05BodyText':
              'Estudiaremos técnicamente su solicitud y le propondremos el mejor equipo para su proyecto.',
          'screen06HeadText':
              'Compramos, Entregamos, Instalamos y Hacemos el Mantenimiento',
          'screen06BodyText':
              'Sikatronics Equipment se encarga de la compra, instalación, entrega y mantenimiento de los equipos necesarios para su proyecto.',
          'screen06ButtonText': 'Listo',
          'successfullScreenHeadText1': '¡Gracias!',
          'successfullScreenHeadText2': 'grupos',
          'successfullScreenBodyText1':
              'Su solicitud ha sido enviada correctamente',
          'successfullScreenBodyText2':
              'Su Solicitud no ha sido enviada con éxito por favor inténtelo de nuevo',
          'successfullScreenButtonText1': 'Reenviar solicitud',
          'successfullScreenButtonText2': 'Ir a la página de inicio',
          'sendRequestPageHeadText': 'ENVÍANOS UNA SOLICITUD',
          'sendRequestPageBodyText':
              'Nombre de la máquina/Vehículo/Equipo/Mercancía',
          'sendRequestPageName': 'Introduzca el nombre',
          'sendRequestPageCall': 'Disponibilidad para llamar',
          'sendRequestPageEmail': 'Correo electrónico',
          'sendRequestPageEnterEmail': 'Introduce tu correo electrónico',
          'sendRequestPageDesc': 'Descripción',
          'sendRequestphonenumber': 'Introduzca el número de teléfono',
          'sendRequestPageProdDetails': 'Ingrese los detalles de su producto',
          'sendRequestPageSend': 'Enviar',
          'sendRequestSnackbarTitle': 'se ha producido un error',
          'sendRequestSnackbarMsg':
              'tienes que llenar todos los campos correctamente',
          'sendRequestMachineName': 'Introduzca el nombre de la máquina.',
          'Phone Number': 'Número de teléfono',
          'registrationCountry': 'País de residencia',
          'registrationEnterCompanyName': 'Introduzca el nombre de la empresa',
          'registrationCompanyName': 'Nombre de empresa',
          'registrationLastName': 'Apellido',
          'registrationFirstName': 'Primer nombre',
          'registrationEnterFirstName': 'Ingrese el nombre',
          'learnMoreScreenCat': 'categoría',
          'learnMoreScreenLearn': 'aprende más',
          'learnMoreScreenBackHome': 'De vuelta a casa',
          'listOfProdHi': "Hola",
          'listOfProdWhatYouNeed': "¿Qué equipo necesitas?",
        }
      };
}

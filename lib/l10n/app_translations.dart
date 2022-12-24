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
          'screen01BodyText':
              'Companion of entrepreneur\'s. We provide your machines, equipment, raw materials and maintenance for your business.',
          'screen01ButtonText': 'Choose language',
          'screen02HeadText': 'Welcome to Sikatronicks Equipment',
          'screen02BodyText':
              'Companion of entrepreneur\'s. We provide your machines, equipment, raw materials and maintenance for your business.',
          'continueText': 'Continue',
          'screen03HeadText' : 'Search for  Machines and Equipement',
          'screen03BodyText' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Lorem ipsum dolor sit amet consectetur adipiscing elit',
          'screen04HeadText': 'Find Machines, Machineries, Vehicles, Raw Material and Maintenance of your business',
          'screen04BodyText' : 'Contact Sikatronics Equipment support team and provide details of the Machine, Equipment, Raw material or Machinery you need for your business.',
          'screen05HeadText': 'Get a Technical and Commercial Study.',
          'screen05BodyText' : 'We will study your request technically and propose you the best equipment for your project.',
          'screen06HeadText' : 'We purchase, deliver, Install and do the Maintenance',
          'screen06BodyText' : 'Sikatronics Equipment handles the purchase, installation, delivery and maintenance of the equipment required for your project.',
          'screen06ButtonText' : 'Ready',
          'successfullScreenHeadText1' :'Thank You!',
          'successfullScreenHeadText2' :'Ouups',
          'successfullScreenBodyText1' :'Your Request has  been successfully sent',
          'successfullScreenBodyText2' :'Your Request has not been successfully sent please try again',



        },

        //French
        'fr_FR': {
          'screen01BodyText':
              'Compagnon d\'entrepreneur. Nous fournissons vos machines, équipements, matières premières et maintenance pour votre entreprise.',
          'screen01ButtonText': 'Choisissez la langue',
          'screen02HeadText': 'Bienvenue chez Sikatronics Equipment',
          'screen02BodyText':
              'Compagnon d\'entrepreneur. Nous fournissons vos machines, équipements, matières premières et maintenance pour votre entreprise.',
          'continueText': 'Continuer',
          'screen03HeadText' : 'Rechercher des machines et équipements',
          'screen03BodyText' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Lorem ipsum dolor sit amet consectetur adipiscing elit',
          'screen04HeadText': 'Trouvez des machines, des machines, des véhicules, des matières premières et la maintenance de votre entreprise',
          'screen04BodyText' : 'Contactez l\'équipe d\'assistance de Sikatronics Equipment et fournissez les détails de la machine, de l\'équipement, de la matière première ou de la machinerie dont vous avez besoin pour votre entreprise.',
        'screen05HeadText': 'Obtenez une étude technique et commerciale.',
          'screen05BodyText' : 'Nous étudierons techniquement votre demande et vous proposerons le meilleur équipement pour votre projet.',

          'screen06HeadText' : 'Nous achetons, livrons, installons et effectuons la maintenance',
          'screen06BodyText' : 'Sikatronics Equipment s\'occupe de l\'achat, de l\'installation, de la livraison et de la maintenance des équipements nécessaires à votre projet.',
          'screen06ButtonText' : 'Prêt',
          'successfullScreenHeadText1' :'Merci!!',
          'successfullScreenHeadText2' :'Oups',
 'successfullScreenBodyText1' :'Your Request has  been successfully sent',
          'successfullScreenBodyText2' :'Your Request has not been successfully sent please try again',

        },

        //German
        'de_DE': {
          'screen01BodyText':
              'Begleiter des Unternehmers. Wir stellen Ihre Maschinen, Anlagen, Rohstoffe und Wartung für Ihr Unternehmen bereit.',
          'screen01ButtonText': 'Sprache wählen',
          'screen02HeadText': 'Willkommen bei Sikatronics Equipment',
          'screen02BodyText':
              'Begleiter des Unternehmers. Wir stellen Ihre Maschinen, Anlagen, Rohstoffe und Wartung für Ihr Unternehmen bereit.',
          'continueText': 'Fortsetzen',
          'screen03HeadText' : 'Suchen Sie nach Maschinen und Anlagen',
          'screen03BodyText' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Lorem ipsum dolor sit amet consectetur adipiscing elit',
          'screen04HeadText': 'Finden Sie Maschinen, Maschinen, Fahrzeuge, Rohstoffe und Wartung Ihres Unternehmens',
          'screen04BodyText' : 'Wenden Sie sich an das Support-Team von Sikatronics Equipment und geben Sie Details zu den Maschinen, Geräten, Rohstoffen oder Maschinen an, die Sie für Ihr Unternehmen benötigen.',
    'screen05HeadText': 'Holen Sie sich ein technisches und kaufmännisches Studium.',
          'screen05BodyText' : 'Wir werden Ihre Anfrage technisch prüfen und Ihnen die beste Ausrüstung für Ihr Projekt vorschlagen.',
          'screen06HeadText' : 'Wir kaufen, liefern, installieren und führen die Wartung durch',
          'screen06BodyText' : 'Sikatronics Equipment kümmert sich um den Kauf, die Installation, Lieferung und Wartung der für Ihr Projekt erforderlichen Ausrüstung.',
          'screen06ButtonText' : 'Bereit',
          'successfullScreenHeadText1' :'Danke!',
          'successfullScreenHeadText2' :'Ouups',
 'successfullScreenBodyText1' :'Your Request has  been successfully sent',
          'successfullScreenBodyText2' :'Your Request has not been successfully sent please try again',

        },

        //Portuguese
        'pt_PT': {
          'screen01BodyText':
              'Companheiro de empresário. Fornecemos suas máquinas, equipamentos, matéria-prima e manutenção para o seu negócio.',
          'screen01ButtonText': 'Escolha o seu idioma',
          'screen02HeadText': 'Bem-vindo a Equipamentos Sikatronicks',
          'screen02BodyText':
              'Companheiro de empresário. Fornecemos suas máquinas, equipamentos, matéria-prima e manutenção para o seu negócio.',
      'continueText' : 'Continuar',
          'screen03HeadText' : 'Pesquisar Máquinas e Equipamentos',
          'screen03BodyText' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Lorem ipsum dolor sit amet consectetur adipiscing elit',
          'screen04HeadText': 'Encontre Máquinas, Maquinários, Veículos, Matéria Prima e Manutenção do seu negócio',
          'screen04BodyText' : 'Entre em contato com a equipe de suporte da Sikatronics Equipment e forneça detalhes da Máquina, Equipamento, Matéria-prima ou Maquinário que você precisa para o seu negócio.',

  'screen05HeadText': 'Obtenha um Estudo Técnico e Comercial.',
          'screen05BodyText' : 'Estudaremos tecnicamente o seu pedido e propomos-lhe o melhor equipamento para o seu projeto.',


          'screen06HeadText' : 'Compramos, entregamos, instalamos e fazemos a manutenção',
          'screen06BodyText' : 'A Sikatronics Equipment trata da compra, instalação, entrega e manutenção do equipamento necessário para o seu projeto.',
          'screen06ButtonText' : 'Preparar',
          'successfullScreenHeadText1' :'Obrigada!',
          'successfullScreenHeadText2' :'Ouups',
 'successfullScreenBodyText1' :'Your Request has  been successfully sent',
          'successfullScreenBodyText2' :'Your Request has not been successfully sent please try again',




        },

        //Spanish
        'es_ES': {
          'screen01BodyText':
              'Compañero del emprendedor. Proveemos sus máquinas, equipos, materias primas y mantenimiento para su negocio.',
          'screen01ButtonText': 'Elige lengua',
          'screen02HeadText': 'Bienvenidos a Equipos Sikatronicks',
          'screen02BodyText':
              'Compañero del emprendedor. Proveemos sus máquinas, equipos, materias primas y mantenimiento para su negocio.',
      'continueText' : 'Continuar',
      'screen03HeadText' : 'Búsqueda de Máquinas y Equipos',
          'screen03BodyText' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Lorem ipsum dolor sit amet consectetur adipiscing elit',
          'screen04HeadText': 'Encuentre Máquinas, Maquinarias, Vehículos, Materia Prima y Mantenimiento de su negocio',
          'screen04BodyText' : 'Póngase en contacto con el equipo de soporte de Sikatronics Equipment y proporcione detalles de la Máquina, Equipo, Materia prima o Maquinaria que necesita para su negocio.',
  'screen05HeadText': 'Obtenga un Estudio Técnico y Comercial.',
          'screen05BodyText' : 'Estudiaremos técnicamente su solicitud y le propondremos el mejor equipo para su proyecto.',

          'screen06HeadText' : 'Compramos, Entregamos, Instalamos y Hacemos el Mantenimiento',
          'screen06BodyText' : 'Sikatronics Equipment se encarga de la compra, instalación, entrega y mantenimiento de los equipos necesarios para su proyecto.',
          'screen06ButtonText' : 'Listo',

        'successfullScreenHeadText1' :'¡Gracias!',
          'successfullScreenHeadText2' :'grupos',


           'successfullScreenBodyText1' :'Your Request has  been successfully sent',
          'successfullScreenBodyText2' :'Your Request has not been successfully sent please try again',

          
        }
      };
}

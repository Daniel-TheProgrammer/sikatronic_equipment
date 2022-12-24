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
          
        }
      };
}

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'googlesignin.dart' as googlesignin;


// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
    selector: 'googlesignin',
    styleUrls: ['googlesignin_component.css'],
    templateUrl: 'googlesignin_component.html',
    directives: [
      NgIf,
      NgFor,
      materialInputDirectives,
      MaterialButtonComponent,
    ],
    providers: [

    ],
)
class GoogleSignInComponent {
  GoogleSignInComponent();

  String token;
  String apiKey;
  String authDomain;
  String databaseURL;
  String storageBucket;
  String messagingSenderId;

  void init() async {
    Map<String, String> options = <String, String>{
      "apiKey":        this.apiKey,        // Auth / General Use
      "authDomain":    this.authDomain,    // Auth with popup/redirect
      "databaseURL":   this.databaseURL,   // Realtime Database
      "storageBucket": this.storageBucket, // Storage
    };
    googlesignin.initialize(options);
  }

  void signIn() async {
    this.token = await googlesignin.auth();
  }

}

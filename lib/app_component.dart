import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import './src/daterange/daterange_component.dart';
import './src/googlesignin/googlesignin_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [
    MaterialTabPanelComponent,
    MaterialTabComponent,
    DateRangeComponent,
    GoogleSignInComponent,
  ],
  providers: [ ],
)
class AppComponent {
  const AppComponent();
}
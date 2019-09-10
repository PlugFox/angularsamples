import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import './src/daterange_component.dart';

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
  ],
  providers: [ ],
)
class AppComponent {
  const AppComponent();
}
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [
    MaterialDateRangePickerComponent,
  ],
  providers: [
    datepickerBindings,
  ]
)
class AppComponent {
  AppComponent();

  var one = DatepickerComparison.noComparison(
    DatepickerDateRange(
      'first',
      Date.today().add(days: 3),
      Date.today().add(days: 4),
    ),
  );
  var two = DatepickerComparison.noComparison(
    DatepickerDateRange(
      'second',
      Date.today().add(days: 5),
      Date.today().add(days: 6),
    ),
  );
  void checkDateRange() {
    /// TODO: Получить текущие значения material-date-range-picker
    print('first: ${one.toString()}');
    print('second: ${two.toString()}');
  }
}

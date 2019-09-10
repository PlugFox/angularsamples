import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'daterange',
  styleUrls: ['daterange_component.css'],
  templateUrl: 'daterange_component.html',
  directives: [
    NgIf,
    NgFor,
    MaterialDateRangePickerComponent,
    MaterialButtonComponent,
  ],
  providers: [
    datepickerBindings,
  ]
)
class DateRangeComponent {
  DateRangeComponent();

  String _log = '';
  String get log => this._log;
  set log(String value) {
    print(value);
    this._log += '\n$value';
  }

  List<DateRangeTile> rangeTileList = <DateRangeTile>[];

  void rmRange() {
    rangeTileList.removeLast();
  }

  void addRange() {
    this.rangeTileList.add(DateRangeTile());
  }

  void checkDateRange() {
    log = '### Ranges:';
    for (DateRangeTile rangeTile in this.rangeTileList) {
      log = '${rangeTile.range.toString()}';
    }
    log = '### ### ###';
    log = '';
  }
}

class DateRangeTile {
  DatepickerComparison _range;
  DatepickerComparison get range => this._range;
  set range(DatepickerComparison value) {
    this._range = value;
  }

  DateRangeTile();

  /*
  // DatepickerComparison sample
  DatepickerComparison.previousPeriod(
    DatepickerDateRange.custom(
      Date.today().add(days: 3),
      Date.today().add(days: 4),
    ),
  ),
  */
}
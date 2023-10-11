import 'dart:math';


void main() {
  //list
  List<String> cities = [
    'Chennai',
    'Mumbai',
    'Bangalore',
    'Coimbatore',
    'Pune'
  ];
  cities.add('Delhi');
  cities.remove('pune');
  print(cities);

  //set
  Set<int> num = {1, 2, 3, 4, 5};
  num.add(3);
  num.remove(3); //set cannot accept duplicated values
  print(num);

  //map
  Map<String, String> countries = {
    'India': 'New Delhi',
    'Italy': 'Rome',
    'China': 'Beijing',
    'USA': 'Washington',
    'Japan': 'Tokyo'
  };
  print(countries['India']);
  countries.putIfAbsent('Kenya', () => 'Nairobi');
  print(countries);

  bool include = false;
  //collection
  var nums = [
    1,
    2,
    3,
    4,
    if (include) 5,
    6,
    7,
    8,
    9,
    10,
  ];

  print(nums);

  //collection-for
  var squares = [for (var i = 1; i <= 5; i++) i * i];
  for (int i = 0; i < squares.length; i++) {
    print(squares[i]);
  }

  //combine list using spread operator
  List<int> nums1 = [1, 2, 3, 4, 5];
  List<int> nums2 = [6, 7, 8, 9, 10];
  List<int> combined = [...nums1, ...nums2];
  // nums1.addAll(nums2);
  print(combined);

  //nullable-can contain both null and values
  int? num1 = 10;
  num1 = 20;
  print(num1);

  //non nullable can't contain null
  // int nnum=null;
  int nnum = 10;
  print(nnum);

  //the nullable string is null and print a default message if it is. Otherwise, print the string.
  String? name = 'sara';
  if (name == null) {
    print('the container is null');
  } else {
    print(name);
  }
  //assertion operator to convey value is not null
  String? hope = 'saranya';
  String one = '';
  one = hope!;
  print(one);

  String? nullable = null;
  String two = nullable ?? '';
  print(two);

  //

  String? call = null;
  int? len = call?.length;
  if (len != null) {
    print(len);
  } else {
    print('is null');
  }
  //function calling
  print(square(10));

  print(powerOfNumber(2, 3));

  int dummy({required a, required b}) {
    return a + b;
  }

  int dummy2(a, b) {
    return a + b;
  }

  print(dummy(a: 5, b: 6));

  print(dummy2(5, 6));

  int power({exponent = 2.0, required a}) {
    return pow(a, exponent) as int;
  }

  print(power(a: 5));

  int cube(a) => a * a * a;
  print(cube(5));

  print(multiplication(2, 5));

  //functions accept list and return its sum
  int sum(List<int> nums) {
    int sum = 0;
    for (int i = 0; i < nums.length; i++) {
      sum += nums[i];
    }
    return sum;
  }

  print(sum([1, 2, 3, 4, 5]));

  //multiplying list and summing them
  int sum1(List<int> nums,[element1=2]) {
    int sum = 0;
    for (int i = 0; i < nums.length; i++) {
      sum += nums[i]*element1 as int;
    }
    return sum;
  }

  print(sum1([1,2,3,4,5]));

  //setting default value for the muliplier
  int sum2(List<int> nums,[element1=1]) {
    int sum = 0;
    for (int i = 0; i < nums.length; i++) {
      sum += nums[i]*element1 as int;
    }
    return sum;
  }
  print(sum2([1,2,3,4,5]));

  //return average of list using arrow function
  double average(List<int> num) => num.reduce((a, b) => a + b) / num.length ;
  
  print(average([1,2,3,4,5]));

  //function that returns standard deviation
  double standardDeviation(List<int> nums) {
    double mean(List<int> num) => num.reduce((a, b) => a + b) / num.length ;//inner function-calculates mean
    double average1=mean(nums);
    double sum = 0;
    for (int i = 0; i < nums.length; i++) {
      sum += pow(nums[i] - average1, 2);
    }
    return sqrt(sum / nums.length);
  }
  print(standardDeviation([1,2,3,4,5]));
  
}

//square method
int square(int number) {
  return number * number;
}

int powerOfNumber(base, exponent) {
  int ans = pow(base, exponent) as int;
  return ans;
}

int multiplication(int b, int c) {
  int factorial(int a) {
    int fact = 1;
    while (a > 0) {
      fact *= a;
      a--;
    }
    return fact;
  }

  factorial(5);
  return b * c;
}

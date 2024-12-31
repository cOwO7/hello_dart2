class Student{
  // 필드, 멤버변수
  String _name; // private
  int _kor;
  int _eng;
  int _math;

  // 생성자
  Student(this._name, this._kor, this._eng, this._math);

  // getter/setter
  String get name => _name;
  int get kor => _kor;
  int get eng => _eng;
  int get math => _math;

  set name(String name) => _name = name;
  set kor(int kor) => _kor = kor;
  set eng(int eng) => _eng = eng;
  set math(int math) => _math = math;

  // 학생 정보 출력 메서드
  void printSungJuk(){
    print('$_name $_kor $_eng $_math');
  }
}
void main(){
  Student std01 = new Student('혜교', 99, 98, 99);
  std01.printSungJuk();
  print(std01.name);
}
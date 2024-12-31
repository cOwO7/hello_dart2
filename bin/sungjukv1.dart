import 'dart:convert';
import 'dart:io';

// 성적 처리 프로그램 v1
// 이름, 국어, 영어, 수학을 입력받아
// 총점, 평균, 학점(수우미양가)을 구하고 출력

void main(){
  // 데이터 입력 받기
  print('이름은?');
  String? name = stdin.readLineSync(encoding: utf8);

  print('국어는?');
  int? kor = int.tryParse(stdin.readLineSync() ?? '');
  if (kor == null || kor < 0 || kor > 100){
    print('올바른 점수를 입력하세요.');
    return;
  }

  print('영어는?');
  int? eng = int.tryParse(stdin.readLineSync() ?? '');
  if (eng == null || kor < 0 || kor > 100){
    print('올바른 점수를 입력하세요.');
    return;
  }

  print('수학은?');
  int? math = int.tryParse(stdin.readLineSync() ?? '');
  if (math == null || kor < 0 || kor > 100){
    print('올바른 점수를 입력하세요.');
    return;
  }

  // 성적 데이터 처리
  int tot = kor + eng + math;
  double avg = tot / 3;
  String grd = '가';
  if(avg>=90){
    grd='수';
  } else if(avg>=80){
    grd='우';
  } else if(avg>=70){
    grd='미';
  } else if(avg>=60){
    grd='양';
  }

  // 성적 처리 결과 출력
  print('$name $kor $eng $math');
  print('$tot $avg $grd');
}
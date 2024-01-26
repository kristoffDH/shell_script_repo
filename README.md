# shell_script_repo

## delete_dir.sh
* 운영 중에 데이터나 로그가 쌓여서 특정 기간 내의 파일만 유지하려고 할 때 사용하기 위해서 작성한 스크립트
* 파일의 날짜 포맷은 스크립트 내부의 **CHECK_DAY**에 지정
* 파일명에 날짜 이외에 데이터가 있다면 cut, sed 명령어를 이용하여 날짜만 추출하여 **DATE**에 저장
* cut 명령어
  * -d : 나눌 문자 추가
  * fn : 나눈 후, 결과의 첫번째 1부터 사용
  * 예제
```sh
echo "test.1234" | cut -d "." -f1 # test
echo "test.1234" | cut -d "." -f2 # 1234
```
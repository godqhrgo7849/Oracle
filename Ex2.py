# Day 2026.08.19

'''
    * 변수명 주의 사항
        - 예약어, 함수명, 라이브러리, 
        - 소문자로 지정 : 일반변수, 함수명, 모듈명
        - 대문자로 지정 : 클래스
'''

# 예약어 - 변수명으로 사용할 수 없다

import keyword
print(keyword.kwlist) # 예약어 keyword의 list를 출력
print(len(keyword.kwlist)) # 예약어 keyword의 목록의 갯수를 확인 (len)

# 자료형
'''
    int, float, str, boolean
    type() : 자료형 확인
'''
a = False
x, y, z = 3,'y',0.12
print(x, type(x))
print(y, type(y))
print(z, type(z))
print(a,type(a))

# 논리형 - 참고 거짓 Frue, False, bool
# 0, none, 길이가 0인 문자열, [],(),{},set() 값이 없는 집합형 자료형
x,y,z = True,False,None
print(x, type(x))
print(y, type(y))
print(z, type(z))

xx = bool(z)
print(xx,type(xx))

xx,yy,zz = bool(x),bool(y),bool(z)
print(x, xx)
print(y, yy)
print(z, zz)

# 형변환 int(),str(),float(),bool(),fype() 등등

n1,n2,n3 = '10','3.789','-5'
print(int(n1))
print(float(n2))
print(int(n3))

# # 입력문 input 입력하고자 하는 값을 넣는 것
# a = input()
# b = input()
# sum = int(a) + int(b)
# print (sum)

# 퀴즈 : 2개의 숫자값을 입력받은 후 사칙 연산을 수행하여라

# a = int(input("첫 번째 숫자를 입력하세요..."))
# b = int(input("두 번째 숫자를 입력하세요..."))
# print('-'*40)
# print(a,'+',b,'=',a+b)
# print(a,'-',b,'=',a-b)
# print(a,'*',b,'=',a*b)
# print(a,'/',b,'=',a/b)

# 퀴즈 학생명과 나이를 입력받아 학생명, 나이, 태어난 년도를 출력하도록 프로그래밍하여라

# a = input("학생명...")
# b = input("나이...")
# print("-"*40)
# print("학생이름 : " + a)
# print("나이 : " + b +"세")
# print("태어난 해 : ",2026-int(b),"년")

# 연산자 크게 산술, 관계, 논리 연산자로 나뉜다

cnt = 1
print("cnt = ",cnt)
cnt += 10
print("cnt = ",cnt)
cnt -= 10
print("cnt = ",cnt)
cnt *= 10
print("cnt = ",cnt)
cnt /= 10
print("cnt = ",cnt)
cnt %= 10
print("cnt = ",cnt)
cnt // 10
print("cnt = ",cnt)

print(10==1)
print(10>=1)
print(10<=1)
print(10>1)
print(10<1)
print(10!=1)

a = 1000

print(a>100)or(None)
print(a==1000)and(True)
print(not(a>999))

# 문자열 인덱싱 // 문자열의 위치를 숫자로 표시

msg = "도래미파솔라시"
print(msg[0])
print(msg[3])
print(msg[6])
print(msg[-1])

# 문자열 슬라이싱 

msg = '0123456789'
print(msg[0:3])
print(msg[-1:])
print(msg[0:9])
print(msg[-5:])
print(msg[::2]) # 홀수번째
print(msg[1::2]) # 짝수번째
print(msg[::-1]) # 역순

# 퀴즈 - 홍길동씨의 주민등록번호는 881120-1068234 이다.
# 주민등록번호를 변수로 정의한 후 다음과 같이 출력하여라

a = '881120-1068234'
print("연월일 : ", a[:6])
print("숫자 : ",a[-7:])
print(a[:7]+"*******")

# 문자열 포맷팅 - 변수와 값등을 삽입하여 새로운 문자열로 변환
# % 서식자 : %d, %x, %o, %c, %s, %f, %값.소수점 Ex) %3.4f
# % 서식자1 문자열 % 서식자2 %(실제 데이터값 1, 2)

i = 123.456789999

print('실수 1 : %f'%i) # 실수 소수점으로 표시 999 반복으로 인해 9뒤에 0으로 표시
print('실수 2 : %.3f'%i) # 소수점 3자리까지 표시
print('실수 3 : %10.3f'%i) # 소수점 3자리까지 표시하지만 앞에 10만큼의 공백 생성
print('실수 4 : %20.3f'%i) # 소수점 3자리까지 표시하지만 앞에 20만큼의 공백 생성 
print('실수 5 : %e'%i) 

# 문자열 포맷팅2 - format()
# 인덱스가 생략된 형태 {}
# 인덱스가 있는 형태의 format 함수 스타일 {인덱스} {인덱스:서식}
# 변수에 설정값이 있는 형태로 {변수 이용} 
# 소숫점 처리 {인덱스:전체자릿수.소수점이하자릿수f}

today = "수요일"
yesterday = "목요일"
print("오늘은 {}, 내일은{}".format(today,yesterday))
print("오늘은 {1}, 내일은{0}".format(today,yesterday))

# 문자열 포맷팅3 - f-string 방식
# f' 문자열 {변수명이나 변수를이용한수식}'
# f' 문자열 {변수명:전체자릿수.소숫점이하자릿수f}

today = "수요일"
yesterday = "화요일"
print(f'오늘은{today},어제는 {yesterday}')

pi = 3.141592
print(f'pi = {pi}')
print(f'pi = {pi:.3f}')
print(f'pi = {pi:20.3f}')

# 여백을 주거나 대체문자 지정 : >, < , ^
# f" 문자열 {변수:대체문자>자릿수}" Ex) print(f"***{a:>10}***") + a:#>10 등 다양하게 사용 가능
# f" 문자열 {변수:대체문자<자릿수}"
# f" 문자열 {변수:대체문자^자릿수}"

math, kor, eng = 80, 70, 50
print(f"국어 :{kor}, 수학 :{math}, 영어 :{eng}")
print(f"국어 :{kor:>10}, 수학 :{math:<20}, 영어 :{eng:^10}")
print(f"국어 :{kor:#>5}, 수학 :{math:★<5}, 영어 :{eng:@^5}")

# 퀴즈 - 홍길동 씨의 과목별 점수를 이용하여 평균 점수를 소숫점 둘째자리까지 출력하여라

kor, eng, math = 86, 77, 55
avg = (kor+eng+math)/3
print(f"국어 : {kor}\n영어 : {eng}\n수학 : {math}\n평균 : {avg:.2f}")

# 함수
# count(),find(),index()
# upper(), lower(), title()
# replace()
# strip()
# split() : 문자열 > 리스트

sample = """The narrator, an airplane pilot, crashes in the Sahara desert. The crash badly damages his airplane and 
leaves the narrator with very little food or water. As he is worrying over his predicament, he is approached by
 the little prince, a very serious little blond boy who asks the narrator to draw him a sheep. The narrator obliges, 
 and the two become friends. The pilot learns that the little prince comes from a small planet that the little prince 
 calls Asteroid 325 but that people on Earth call Asteroid B-612. The little prince took great care of this planet, 
 preventing any bad seeds from growing and making sure it was never overrun by baobab trees."""

print(f'the 글자의 빈도수는? {sample.count('the')}번')
print(f'the 글자의 인덱스의 위치는? {sample.find('the')}')
print(f'an 글자의 시작하는 위치는? {sample.index('an')}')
print(sample.replace('is','was'))

# 퀴즈 - 입력한 이메일 주소 데이타를 정제된 형태로 변경하여 출력하도록 프로그래밍 하여라
# a = input("정제할 이메일 주소를 입력하세요: ")
# print ('-'*30)
# print(f"원본 데이터는 : [{a:^3}]")
# print ('-'*30)
# print(f"1. 공백 제거 및 소문자 변환 결과 : {a.lower()}")
# print(f"이메일 내 '@' 기호의 개수 : {a.count('@')}개")
# print(f"이메일 내 '@' 기호의 시작 위치 : {a.index('@')} 번 인덱스")

# 퀴즈 

a = """
(1절)
동해물과 백두산이 마르고 닳도록
하느님이 보우하사 우리나라만세

(후렴) 무궁화 삼천리 화려강산 
대한사람 대한으로 길이 보전하세

(2절)
남산위에 저 소나무 철갑을 두른듯
바람서리 불변함은 우리기상 일세
(후렴)무궁화 삼천리 화려강산 대한사람 대한으로 길이보전하세"""


'''
    1) 애국가 1,2 절에서 무궁화는 몇 번 나올까?
    예시)
    무궁화는 애국가 1~2절에서 ?번 나옵니다

    2) 애국가 1,2 절에서 '소나무'의 위치 인덱스 값은?
    예시) 
    애국가 1~2절에서 "소나무"의 인덱스 위치는 ?입니다'

    3) 애국가 1,2 절에서 줄바꿈 없이 출력하여라.

    4) 애국가 1절에서 아래 문자열만 출력하여라(슬라이싱, find() 활용) 
    예시)
    동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세

    5) 애국가에서 일부 슬라이싱 한 후 아래와 같이 출력하여라 (join() 활용)
    예시)
    동=해=물=과= =백=두=산=이= =마=르=고= 
'''
print(f'무궁화는 애국가 1~2절에서 {a.count('무궁화')} 번 나옵니다.')
print(f'애국가 1~2절에서 "소나무"의 인덱스 위치는 {a.index('소나무')} 입니다.')
print(f'무궁화는 애국가 1~2절에서 {a.count('무궁화')} 번 나옵니다.')
print(a.replace("\n", "")) # replace 줄바꿈 없이

start = a.find("동해물과")
end = a.find("(후렴)")

print(a[start:end])
# find를 print 안에서만 사용하려고 하지 말자
# find() → 위치 찾기 → 그 위치를 변수에 저장 → 슬라이싱에 사용

print("=".join(a))

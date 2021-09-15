#include<stdlib.h>


//연결리스트 : 복수개의 데이터들을 링크라는 것을 이용해서, 연결지어 놓은 것.
//구현(inplementation)
//리스트 : 여러 개의 데이터들을 그룹화해서 


#define LIST_LEN 100
typedef int LData;

typedef struct _ArrayList{
	LData arr[LIST_LEN];//int 데이터 100개를 저장할수 이쓴ㄴ 배열 
	int numOfData; //데이터 총갯수 저장 
 	int curPosition;//현재 위치(인덱스)를 current Position 저장
} ArrayList;


//ArrayList와 연결된 연산들

typedef ArrayList List;

//함수의 프로토타입(원형) 
void ListInit(List * plist);
void Linsert(List * plist, LData data);

int LFirst(List * plist, LData * pdata);
	 
	 
 

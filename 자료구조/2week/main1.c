#include<stdlib.h>


//���Ḯ��Ʈ : �������� �����͵��� ��ũ��� ���� �̿��ؼ�, �������� ���� ��.
//����(inplementation)
//����Ʈ : ���� ���� �����͵��� �׷�ȭ�ؼ� 


#define LIST_LEN 100
typedef int LData;

typedef struct _ArrayList{
	LData arr[LIST_LEN];//int ������ 100���� �����Ҽ� �̾��� �迭 
	int numOfData; //������ �Ѱ��� ���� 
 	int curPosition;//���� ��ġ(�ε���)�� current Position ����
} ArrayList;


//ArrayList�� ����� �����

typedef ArrayList List;

//�Լ��� ������Ÿ��(����) 
void ListInit(List * plist);
void Linsert(List * plist, LData data);

int LFirst(List * plist, LData * pdata);
	 
	 
 

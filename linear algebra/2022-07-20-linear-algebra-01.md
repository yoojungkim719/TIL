## 가우스 조던 소거법
- 연립일차방정식의 해를 구할 때 사용
- 기존의 행렬을 더 간단하게 만들면서(원소를 0 or 1로 만들기), 기존 연립방정식의 해가 유지되어야 함
- 기본행 연산을 통해 연립일차방정식의 첨가행렬을 기약행사다리꼴로 변환하여 해를 구한다  
    1. 한 행을 상수배한다
    2. 한 행을 상수배하여 다른 행에 더한다
    3. 두 행을 맞바꾼다  
- 가우스조던 소거법을 이용하여 아래의 연립일차방정식을 풀어보자  
  1. 연립일차방정식을 행렬로 변환  
    
        $\begin{cases}
        x+2y=5\\
        2x+3y=8
        \end{cases} \qquad\to\qquad \begin{pmatrix}1&2&5\\2&3&8\ \end{pmatrix}$  

  2. 2행 - 1행X2  
    
        $\begin{pmatrix}1&2&5\\0&1&2\ \end{pmatrix}$

  3. 1행 - 2행X2  
    
        $\begin{pmatrix}1&0&1\\0&1&2\ \end{pmatrix} \qquad\to\qquad  x=1, y=2$  


## 행렬식
- 정사각행렬 $A$를 하나의 수로써 대응시키는 특별한 함수
- $detA = \vert A \vert$
- $M_{ij}=$기존의 행렬에서 $i$행과 $j$열을 지운 소행렬
- 예) $3 \times 3$ 행렬에서  
  $det\begin{pmatrix}a_{11}&a_{12}&a_{13}\\
                     a_{21}&a_{22}&a_{23}\\
                     a_{31}&a_{32}&a_{33} \end{pmatrix}$  
  
  $=a_{11}M_{11}+a_{12}M_{12}+a_{13}M_{13}$


## 역행렬
- 어떤 행렬$A$에 곱했을 때, 단위행렬이 되는 행렬
- 행렬식 $detA=0$이면, 역행렬이 존재하지 않는다
- $A^{-1}=\frac{1}{detA} \begin{pmatrix}C_{11}&C_{21}&C_{31}\\
                     C_{12}&C_{22}&C_{32}\\
                     C_{13}&a_{32}&a_{33} \end{pmatrix}\qquad$
  (단, $C_{ij}=(-1)^{i+j}M_{ij}$)


## 크래머 공식
- 연립일차방정식 $AX=B$에서, $A$가 행렬식이 $0$이 아닌 정사각행렬일 때,  
$x_{j}=\frac{detA_{j}}{detA}\qquad$ 단, $j=1, 2, ..., n$이고, $A_{j}$는 $A$의 $j$번째 열을 $B$의 원소로 바꾼 행렬이다.
- 크래머 공식을 이용한 연립일차방정식 풀이  
  $\begin{pmatrix}5&3\\4&1\ \end{pmatrix}
   \begin{pmatrix}x\\y\ \end{pmatrix}
   =\begin{pmatrix}-2\\-5\ \end{pmatrix}$

   $detA=-5-12=-17$
   
   $x=\frac{detA_{x}}{detA}
    =-\frac{1}{17}\begin{vmatrix}-2&3\\-5&-1\ \end{vmatrix}
    =-1$  
   
   $y=\frac{detA_{y}}{detA}
    =-\frac{1}{17}\begin{vmatrix}5&-2\\4&-5\ \end{vmatrix}
    =1$

---
**[Reference]**  
[이상엽Math](https://www.youtube.com/c/%EC%9D%B4%EC%83%81%EC%97%BDMath)
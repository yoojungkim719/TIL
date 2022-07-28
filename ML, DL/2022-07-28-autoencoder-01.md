## 오토인코더(Auto-encoder)

### 오토인코더란 무엇인가?
- 오토인코더(Auto-encoder)란 신경망의 한 종류로서, 인코더(encoder)와 디코더(decoder)로 구성되어 있음
- 입력 데이터를 최대한 압축 시킨 후, 압축된 데이터를 다시 본래의 형태로 복원시킴. 데이터를 압축하는 부분을 Encoder, 압축된 데이터를 복원하는 부분을 Decoder라고 부름
- 압축 과정에서 추출한 의미 있는 데이터 $h$를 'latent vector', 'latent variable', 'code', 'feature' 등으로 칭함 (아래 그림에서 가운데에 있는 원 2개)  
![autoencoder](/images-for-TIL/autoencoder1.png)

### 오토인코더와 관련된 4개의 키워드
- **Unsupervised learning**: 비지도 학습 방식에 해당함. 타깃 데이터($Y$)와는 상관 없이, 피처 데이터($X$)로 압축-복원 과정을 거침. label 데이터가 없이 인공지능 모델을 학습함으로써 데이터 그 자체에 숨겨져 있는 패턴을 발견함.
- **Maximum likelihood density estimation**: 압축-복원 과정의 전 후 피처 데이터(input, output)가 최대한 유사해야 함. 입력과 출력이 같아질 확률이 최대가 되길 바라는 관점임.
- **Manifold learning**: 인코딩 관점에서 볼 때 차원이 축소되므로 manifold learning, dimension reduction과 관련 있음.
- **Generative model learning**: 디코딩 관점에서 볼 때 인코딩 결과를 다시 입력 차원과 똑같이 복원하므로 생성 모델이라고 할 수 있음.


**[비고]**  
- 출처1: 장철원,『선형대수와 통계학으로 배우는 머신러닝 with 파이썬』, 비제이퍼블릭(2021)
- 출처2: [이활석 오토인코더의 모든 것](https://www.youtube.com/watch?v=o_peo6U7IRM&t=838s)
- 본 자료는 마크다운 문법을 활용하여 작성함
# korean-badword-check
입력한 글(한글)이 욕설인지 아닌지를 딥러닝을 통해 판별하는 모델입니다.  
`tensorflow`을 원활하게 구동할 수 있는 Python의 환경에서 원활하게 작동합니다.

## 사용방법
```py
from badword_check import BadWord

model = BadWord.load_badword_model()
data = BadWord.preprocessing("그게 뭔데 씹덕아...")
print(model.predict(data))
```

[Original Project](https://github.com/Nam-SW/badword_check)


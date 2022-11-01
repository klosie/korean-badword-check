import BadWord

model = BadWord.load_badword_model()
datas = [
    "잠을 자지 말라고",
    "물에 의해서 젖다",
    "개새끼",
    "개111새끼",
    "개/새끼",
    "개$새끼"
]

a = model.predict(BadWord.preprocessing(datas))
for i in a:
    print(i)
    if i >= 0.7:
        print("욕")
    else:
        print("Nope")


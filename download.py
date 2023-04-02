from transformers import pipeline

classifier = pipeline(
    "text-classification",
    model="j-hartmann/emotion-english-distilroberta-base",
    top_k=None,
)


def classify(text):
    return classifier(text)


if __name__ == "__main__":
    classify("I am happy")

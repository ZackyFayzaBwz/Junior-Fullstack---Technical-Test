# Pertanyaan 1
fruits = [
    {'fruitId': 1, 'fruitName': 'Apel', 'fruitType': 'IMPORT', 'stock': 10},
    {'fruitId': 2, 'fruitName': 'Kurma', 'fruitType': 'IMPORT', 'stock': 20},
    {'fruitId': 3, 'fruitName': 'apel', 'fruitType': 'IMPORT', 'stock': 50},
    {'fruitId': 4, 'fruitName': 'Manggis', 'fruitType': 'LOCAL', 'stock': 100},
    {'fruitId': 5, 'fruitName': 'Jeruk Bali', 'fruitType': 'LOCAL', 'stock': 10},
    {'fruitId': 5, 'fruitName': 'KURMA', 'fruitType': 'IMPORT', 'stock': 20},
    {'fruitId': 5, 'fruitName': 'Salak', 'fruitType': 'LOCAL', 'stock': 150}
]

def get_unique_fruit_names(fruits):
    return set(fruit['fruitName'].lower() for fruit in fruits)

print("Buah yang dimiliki:", get_unique_fruit_names(fruits))

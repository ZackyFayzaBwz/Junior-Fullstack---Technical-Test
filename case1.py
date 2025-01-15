fruits = [
    {'fruitId': 1, 'fruitName': 'Apel', 'fruitType': 'IMPORT', 'stock': 10},
    {'fruitId': 2, 'fruitName': 'Kurma', 'fruitType': 'IMPORT', 'stock': 20},
    {'fruitId': 3, 'fruitName': 'apel', 'fruitType': 'IMPORT', 'stock': 50},
    {'fruitId': 4, 'fruitName': 'Manggis', 'fruitType': 'LOCAL', 'stock': 100},
    {'fruitId': 5, 'fruitName': 'Jeruk Bali', 'fruitType': 'LOCAL', 'stock': 10},
    {'fruitId': 5, 'fruitName': 'KURMA', 'fruitType': 'IMPORT', 'stock': 20},
    {'fruitId': 5, 'fruitName': 'Salak', 'fruitType': 'LOCAL', 'stock': 150}
]

# 1. Buah yang dimiliki Andi
fruit_names = set(fruit['fruitName'].lower() for fruit in fruits)
print("Buah yang dimiliki:", fruit_names)

# 2. Jumlah wadah dan isi per wadah
from collections import defaultdict
grouped_by_type = defaultdict(list)
for fruit in fruits:
    grouped_by_type[fruit['fruitType']].append(fruit['fruitName'])

print("Jumlah wadah:", len(grouped_by_type))
for fruit_type, names in grouped_by_type.items():
    print(f"Wadah {fruit_type}: {set(names)}")

# 3. Total stok buah per wadah
total_stock_by_type = defaultdict(int)
for fruit in fruits:
    total_stock_by_type[fruit['fruitType']] += fruit['stock']

print("Total stok per wadah:", dict(total_stock_by_type))

# 4. Komentar terkait kasus
print("Komentar: Perlu memperbaiki duplikasi ID dan memastikan konsistensi nama buah.")

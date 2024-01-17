def sales(cars, customers) -> int:
    cars.sort()
    customers.sort()
    sales = 0
    for customer in customers:
        for car in cars:
            if car <= customer:
                sales += 1
                cars.remove(car)
                break
    return sales


if __name__ == "__main__":
    print(sales([20, 10, 15], [11, 25, 15]))                        # 3
    print(sales([13, 7, 2, 3, 12, 4, 19], [3, 25, 16, 14]))         # 4
    print(sales([24, 6, 20, 21, 12, 5], [25, 1, 24, 15]))           # 3
    print(sales([14, 9, 10, 15, 18, 20], [24, 17, 9, 22, 12, 4]))   # 5

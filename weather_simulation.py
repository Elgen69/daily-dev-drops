# weather_simulation.py
# Simulates random weather patterns for 7 days

import random

weather_conditions = ["Sunny", "Rainy", "Cloudy", "Stormy", "Windy", "Snowy"]
temperatures = range(-5, 35)

def generate_weather():
    for day in range(1, 8):
        condition = random.choice(weather_conditions)
        temp = random.choice(temperatures)
        print(f"Day {day}: {condition}, {temp}°C")

if __name__ == "__main__":
    print("Simulating 7-day weather forecast...\n")
    generate_weather()

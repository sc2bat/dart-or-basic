import csv

data = [
    {1, 'hong', 30},
    {2, 'han', 20}
]

csv_file_path = 'sample.csv'

with open(csv_file_path, mode='w', newline='') as file :
    writer = csv.writer(file)

    writer.writerow(['ID', 'Name', 'Age'])

    writer.writerows(data)

print('done')
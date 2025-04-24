import pandas as pd

# قراءة البيانات
data = pd.read_csv('/data/cleaned_data.csv')

# إجراء التحليل الإحصائي
dt = data.describe()
print(dt)

# حفظ النتائج في ملف جديد
dt.to_csv('/data/dt.csv')

# Pewlett Hackard Analysis.

## Overview:

- The Purpose of this analysis is to find out tow main things: 

    - How many employees are retiring.
    - How mant employees are eligible for Mentorship Program.

## Results:

- From the analysis: 72,458 employees are expeted to retire. 

![](https://github.com/YuvrajT/Pewlett-Hackard-Analysis./blob/main/Resources/Query%201.png)

- Out of which nearly 50,000+ employees are retiring from senior role such as: Senior Engineer and Senior Staff.

![](https://github.com/YuvrajT/Pewlett-Hackard-Analysis./blob/main/Resources/query%202.png)

- The importnace of using distinct on makes an huge impact such as if we hadnt used distinct on the total number of employees retiring would be 133,776.

![](https://github.com/YuvrajT/Pewlett-Hackard-Analysis./blob/main/Resources/Query%204.png)

Total employees qualify for Mentorship Eligibility are 1549.

![](https://github.com/YuvrajT/Pewlett-Hackard-Analysis./blob/main/Resources/Query%205.png)

## Summary: 

- We know 72,458 employees are retiring soon and we know their titles as well. Below query will determine how many employees from each dept are retiring. Thus to find that out we are: joining tables: unique titles on dept_emp and dept_emp on departments.

![](https://github.com/YuvrajT/Pewlett-Hackard-Analysis./blob/main/Resources/Emp_dept.png)

- After establishing the above we can also determine how many employees are qualified for Mentorship program from each dept. 

![](https://github.com/YuvrajT/Pewlett-Hackard-Analysis./blob/main/Resources/Mentorship.png)

SELECT 

    employeeid as employee_id,
    lastName as employee_last_name,
    firstName as employee_first_name,
    title as employee_title,
    reportsTo as supervisor_employee_id,
    birthDate as employee_birth_date,
    hireDate as employee_hired_date,
    address as employee_address,
    city as employee_city,
    state as employee_state,
    country as employee_country,
    postalCode as employee_zipcode,
    phone as employee_phone_number,
    fax as employee_fax_number,
    email as employee_email_address

FROM {{ source('training', 'EMPLOYEE') }}
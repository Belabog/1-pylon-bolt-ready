/*
  # Create Loan Applications and Contact Submissions Tables

  1. New Tables
    - `loan_applications`
      - `id` (uuid, primary key)
      - `loan_amount` (numeric) - Amount requested
      - `monthly_income` (numeric) - Applicant's monthly income
      - `purpose_of_loan` (text) - Business, Home, Car, etc.
      - `loan_years` (text) - Duration of loan
      - `full_name` (text) - Applicant's full name
      - `email` (text) - Contact email
      - `phone` (text) - Phone number
      - `marital_status` (text) - Single, Married, etc.
      - `birth_date` (text) - Date of birth
      - `dependents` (text) - Number of dependents
      - `house_no` (text) - House number/name
      - `street` (text) - Street address
      - `city` (text) - City
      - `state` (text) - State/Province
      - `country` (text) - Country
      - `pin_code` (text) - Postal/ZIP code
      - `employment_industry` (text) - Industry sector
      - `employer_name` (text) - Employer name
      - `employer_status` (text) - Full-time, Part-time, etc.
      - `length_of_employment` (text) - How long employed
      - `work_phone` (text) - Work phone number
      - `created_at` (timestamptz) - Submission timestamp
    
    - `contact_submissions`
      - `id` (uuid, primary key)
      - `name` (text) - Contact name
      - `email` (text) - Contact email
      - `phone` (text) - Contact phone
      - `subject` (text) - Message subject
      - `message` (text) - Message content
      - `created_at` (timestamptz) - Submission timestamp

  2. Security
    - Enable RLS on both tables
    - Add policies allowing anonymous inserts (public forms)
    - No select/update/delete policies (admin only via dashboard)
*/

-- Create loan_applications table
CREATE TABLE IF NOT EXISTS loan_applications (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  loan_amount numeric DEFAULT 0,
  monthly_income numeric DEFAULT 0,
  purpose_of_loan text DEFAULT '',
  loan_years text DEFAULT '',
  full_name text DEFAULT '',
  email text DEFAULT '',
  phone text DEFAULT '',
  marital_status text DEFAULT '',
  birth_date text DEFAULT '',
  dependents text DEFAULT '',
  house_no text DEFAULT '',
  street text DEFAULT '',
  city text DEFAULT '',
  state text DEFAULT '',
  country text DEFAULT '',
  pin_code text DEFAULT '',
  employment_industry text DEFAULT '',
  employer_name text DEFAULT '',
  employer_status text DEFAULT '',
  length_of_employment text DEFAULT '',
  work_phone text DEFAULT '',
  created_at timestamptz DEFAULT now()
);

-- Create contact_submissions table
CREATE TABLE IF NOT EXISTS contact_submissions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text DEFAULT '',
  email text DEFAULT '',
  phone text DEFAULT '',
  subject text DEFAULT '',
  message text DEFAULT '',
  created_at timestamptz DEFAULT now()
);

-- Enable Row Level Security
ALTER TABLE loan_applications ENABLE ROW LEVEL SECURITY;
ALTER TABLE contact_submissions ENABLE ROW LEVEL SECURITY;

-- Allow anonymous users to submit loan applications (public form)
CREATE POLICY "Allow public loan application submissions"
  ON loan_applications
  FOR INSERT
  TO anon
  WITH CHECK (true);

-- Allow anonymous users to submit contact forms (public form)
CREATE POLICY "Allow public contact submissions"
  ON contact_submissions
  FOR INSERT
  TO anon
  WITH CHECK (true);

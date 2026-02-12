# Pylon HTML template (Bolt-ready)

This is the `pylon-html` folder wrapped as a Vite multi-page project so it can run cleanly in Bolt/StackBlitz.

## Run locally
```bash
npm install
npm run dev
```

## Notes
- Pages: about.html, apply-now.html, contact.html, credit-card-details.html, credit-card.html, faq.html, how-it-works.html, index-2.html, index-3.html, index-4.html, index-5.html, index.html, loan-calculator.html, loan-eligibility.html, news-default.html, news-details.html, news.html, service-details.html, services-2.html, services.html, team-details.html, team.html, testimonials.html, thank-you.html
- The original template includes PHP handlers (`contact.php`, `apply-now.php`) which will **not** run in Bolt (Bolt supports JS backends only). Replace these with a serverless/API solution.

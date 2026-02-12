import { defineConfig } from 'vite';
import path from 'node:path';

export default defineConfig({
  // Helps when deploying to a subfolder; safe for relative assets in static templates
  base: './',
  build: {
    rollupOptions: {
      input: {
        about: path.resolve(__dirname, 'about.html'),
        apply-now: path.resolve(__dirname, 'apply-now.html'),
        contact: path.resolve(__dirname, 'contact.html'),
        credit-card-details: path.resolve(__dirname, 'credit-card-details.html'),
        credit-card: path.resolve(__dirname, 'credit-card.html'),
        faq: path.resolve(__dirname, 'faq.html'),
        how-it-works: path.resolve(__dirname, 'how-it-works.html'),
        index-2: path.resolve(__dirname, 'index-2.html'),
        index-3: path.resolve(__dirname, 'index-3.html'),
        index-4: path.resolve(__dirname, 'index-4.html'),
        index-5: path.resolve(__dirname, 'index-5.html'),
        index: path.resolve(__dirname, 'index.html'),
        loan-calculator: path.resolve(__dirname, 'loan-calculator.html'),
        loan-eligibility: path.resolve(__dirname, 'loan-eligibility.html'),
        news-default: path.resolve(__dirname, 'news-default.html'),
        news-details: path.resolve(__dirname, 'news-details.html'),
        news: path.resolve(__dirname, 'news.html'),
        service-details: path.resolve(__dirname, 'service-details.html'),
        services-2: path.resolve(__dirname, 'services-2.html'),
        services: path.resolve(__dirname, 'services.html'),
        team-details: path.resolve(__dirname, 'team-details.html'),
        team: path.resolve(__dirname, 'team.html'),
        testimonials: path.resolve(__dirname, 'testimonials.html'),
        thank-you: path.resolve(__dirname, 'thank-you.html'),
      }
    }
  }
});

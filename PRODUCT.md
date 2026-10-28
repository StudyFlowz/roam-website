# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Stack

Static HTML/CSS, single `index.html` with inline styles and script, no build step. Assets in `assets/`.

## Users

Car and motorcycle enthusiasts who drive for the sake of driving: the drive is the point, not the arrival.

- Someone with a free Sunday and no idea where to take the car.
- Someone new to a city who wants the road the local club already knows.
- Someone who keeps meaning to write down which roads were worth it, and never does.
- A rider who wants to know whether they are actually getting quicker on their local hill.

Explicitly not for commuting, ride-hailing, delivery, or getting anywhere on time.

## Product Purpose

Roam is a map-first app where drivers and riders post the roads worth driving, find the ones they haven't done, and keep a record of the ones they have. This website is its public landing page: it explains the app and sends visitors to install it.

## Positioning

Navigation apps answer "how do I get there?" Roam answers "where should I go?" Nothing in Roam optimises for arrival. A route is a road someone chose to drive, described by the person who drove it.

Scope is global: any city. Pakistan (Islamabad) is where it started and where its measured claims come from.

## Operating Context

App capabilities the site describes:

- **Find a road:** feed filtered by tag and vehicle; sort by nearest, newest, best-rated, twistiest, trending this month.
- **Judge it:** distance, estimated time, twist grade (0 to 10, scored from how much the road turns), regional designation (e.g. `ISL-02`), author-placed stops (fuel, coffee, food, viewpoint), photos, reviews.
- **Know when to leave:** departure-time profile sampled across the day, quiet window named.
- **Drive it:** wall-clock timer that survives the phone locking and pauses when stopped.
- **Keep what you did:** ride log against the route's estimate, personal bests, riding-time chart.
- **Post your own:** search or drop pins; the line snaps to real roads; add stops, photos, notes.

## Capabilities and Constraints

- Android: launched. Google Play URL **pending** (expected within a week of 2026-10-16); the CTA is a placeholder until then.
- iOS: **coming soon**. No App Store link.
- No waitlist: the app is launched.
- The app is dark-only; the web app build exists but has no public URL yet.

## Brand Commitments

- Name: **Roam**. Instagram: `@roam_index`. Tagline: "Roads worth driving."
- Voice: plain, specific, measured. Facts over adjectives ("Measured, not guessed."). Lines in use: "Roads your GPS never suggested.", "Every road someone loved is a road nobody else can find. Roam is where they write it down."
- App icon: `assets/icon.png` (amber route mark on near-black), from `roam-frontend/assets/images/icon.png`.

## Evidence on Hand

Measured facts (from the root `README.md`, safe to quote):

- Pir Sohawa Hillclimb: 6.1 km, 15 min, twist grade 7.8/10.
- Islamabad to Murree: 139 min leaving at 04:00, 209 min at 20:00.
- Mapbox live congestion: 0% usable in Pakistan (all 5,061 segments `unknown`).
- Mapbox geocoding scored 0/8 on well-known Islamabad places; OpenStreetMap scored 8/8.
- Twist grade recalibrated against measured Islamabad roads (193 to 728 degrees per km).

Assets: `assets/icon.png` and `assets/mark.png` (tight crop of the icon), Instagram post art in `../instagram/`.

Road photos in `assets/roads/` are Wikimedia Commons images already attached to those routes in production (`seed.py` credits each). Licences need attribution: the site footer credits each photo. Do not use the old `phone.png` screenshot: it showed a stock Unsplash photo.

Departure profiles: `routes.traffic_profile` holds real samples (hours 04 to 22, every 2 h) for about 15 Pakistan routes. Murree Old Road: 64 min at 06:00, 108 min at 16:00 (+69%). The README's 139/209 Murree figures have no stored profile behind them.

Production totals (read-only aggregate query on the prod Postgres, 2026-10-28):

- 331 routes across 54 regions in 9 countries (Pakistan, Canada, US, France, Finland, Switzerland, India, Australia, Netherlands).
- 11,227 km of road; twist grades 0.9 to 7.8. Twistiest: Pir Sohawa Hillclimb 7.8, Schenley Park and Panther Hollow 7.1, Nathiagali Galyat Run 6.5.
- 188 drives logged, 30 users. Too small to quote as social proof.

Refresh these before quoting them later. The README figures (21 routes, 5 regions, 729 km) are stale.

No testimonials, press, ratings, or download counts exist yet.

## Product Principles

1. The drive is the point. Never sell speed of arrival.
2. Measured, not assumed. Every claim is a number someone measured.
3. Local knowledge, written down by the person who drove it.
4. Works where mainstream maps quietly don't.

SELECT TOP 10 *
FROM SocialMedia;
SELECT TOP 10
    country,
    SocialMediaUsers_2025
FROM SocialMedia
ORDER BY SocialMediaUsers_2025 DESC;
SELECT TOP 10
    country,
    SocialMediaUsersPctOfPopulation_2025
FROM SocialMedia
ORDER BY SocialMediaUsersPctOfPopulation_2025 DESC;
SELECT
    country,
    SocialMediaUsers_2025,
    SocialMediaUsersPctOfPopulation_2025,
    CASE
        WHEN SocialMediaUsersPctOfPopulation_2025 >= 80
            THEN 'Very High Adoption'
        WHEN SocialMediaUsersPctOfPopulation_2025 >= 60
            THEN 'High Adoption'
        WHEN SocialMediaUsersPctOfPopulation_2025 >= 40
            THEN 'Moderate Adoption'
        ELSE 'Low Adoption'
    END AS AdoptionLevel
FROM SocialMedia
ORDER BY SocialMediaUsersPctOfPopulation_2025 DESC;
SELECT
    country,
    SocialMediaUsersPctOfPopulation_2025
FROM SocialMedia
WHERE SocialMediaUsersPctOfPopulation_2025 < 40
ORDER BY SocialMediaUsersPctOfPopulation_2025;
SELECT
    country,
    SocialMediaUsers_2025,
    SocialMediaUsersPctOfPopulation_2025,
    CASE
        WHEN SocialMediaUsersPctOfPopulation_2025 >= 80
            THEN 'Strong internet and smartphone penetration'
        WHEN SocialMediaUsersPctOfPopulation_2025 >= 60
            THEN 'Growing digital adoption'
        WHEN SocialMediaUsersPctOfPopulation_2025 >= 40
            THEN 'Moderate social media usage'
        ELSE 'Needs improvement in digital accessibility'
    END AS Reason
FROM SocialMedia
ORDER BY SocialMediaUsersPctOfPopulation_2025 DESC;
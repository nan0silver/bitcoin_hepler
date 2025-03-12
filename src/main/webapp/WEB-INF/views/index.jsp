<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bitcoin Insights</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" rel="stylesheet">

    <style>
        /* 기본 스타일 초기화 */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            line-height: 1.6;
            color: #333;
        }

        /* 컨테이너 및 유틸리티 클래스 */
        .container {
            width: 100%;
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .flex {
            display: flex;
        }

        .flex-col {
            flex-direction: column;
        }

        .items-center {
            align-items: center;
        }

        .justify-between {
            justify-content: space-between;
        }

        .justify-center {
            justify-content: center;
        }

        .space-x-4 > * + * {
            margin-left: 1rem;
        }

        .space-x-2 > * + * {
            margin-left: 0.5rem;
        }

        .space-y-3 > * + * {
            margin-top: 0.75rem;
        }

        .mb-2 {
            margin-bottom: 0.5rem;
        }

        .mb-4 {
            margin-bottom: 1rem;
        }

        .mb-6 {
            margin-bottom: 1.5rem;
        }

        .mb-8 {
            margin-bottom: 2rem;
        }

        .mt-1 {
            margin-top: 0.25rem;
        }

        .mr-2 {
            margin-right: 0.5rem;
        }

        /* 헤더 영역 */
        header {
            background-image: linear-gradient(to right, #f97316, #eab308);
            color: white;
            padding-top: 2rem;
        }

        .logo-container {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .logo-icon {
            width: 2.5rem;
            height: 2.5rem;
        }

        .nav-links {
            display: none;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s;
        }

        .nav-links a:hover {
            color: #fef08a;
        }

        .subscribe-btn {
            background-color: white;
            color: #f97316;
            border: none;
            border-radius: 9999px;
            padding: 0.5rem 1.25rem;
            font-weight: 500;
            font-size: 0.875rem;
            cursor: pointer;
            transition: all 0.3s;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
        }

        .subscribe-btn:hover {
            background-color: #fef9c3;
            transform: scale(1.05);
        }

        .hero-section {
            padding: 2rem 0;
        }

        .hero-title {
            font-size: 2.5rem;
            font-weight: 700;
            line-height: 1.2;
            margin-bottom: 1rem;
        }

        .hero-subtitle {
            font-size: 1.125rem;
            opacity: 0.9;
            margin-bottom: 2rem;
        }

        .hero-btns button {
            padding: 0.75rem 1.5rem;
            border-radius: 0.5rem;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s;
        }
        /* 버튼 사이 간격 증가 */
        .hero-btns.flex.space-x-4 {
            gap: 1.5rem; /* space-x-4보다 더 큰 간격 */
        }

        .primary-btn {
            background-color: white;
            color: #f97316;
            border: none;
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
        }

        .primary-btn:hover {
            background-color: #fef9c3;
            transform: scale(1.05);
        }

        .secondary-btn {
            background-color: transparent;
            color: white;
            border: 2px solid white;
        }

        .secondary-btn:hover {
            background-color: white;
            color: #f97316;
            transform: scale(1.05);
        }

        .bitcoin-icon {
            position: relative;
            width: 24rem;
            height: 24rem;
        }

        .bitcoin-icon-bg {
            position: absolute;
            inset: 0;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 9999px;
            backdrop-filter: blur(4px);
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0%, 100% {
                opacity: 1;
            }
            50% {
                opacity: 0.5;
            }
        }

        .bitcoin-icon svg {
            position: absolute;
            inset: 0;
            width: 100%;
            height: 100%;
        }

        .stats-bar {
            background-color: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(4px);
            padding: 1.5rem 0;
        }

        .stat-value {
            font-size: 1.125rem;
            font-weight: 700;
        }

        .stat-label {
            font-size: 0.875rem;
            font-weight: 500;
        }

        .positive-change {
            color: #4ade80;
        }

        /* 메인 콘텐츠 영역 */
        .section {
            padding: 4rem 0;
        }

        .section-title {
            font-size: 1.875rem;
            font-weight: 700;
            margin-bottom: 1.5rem;
        }

        .section-content {
            font-size: 1rem;
            color: #4b5563;
            margin-bottom: 1.5rem;
        }

        .feature-title {
            font-size: 1.25rem;
            font-weight: 600;
            margin-bottom: 0.75rem;
        }

        .feature-list li {
            display: flex;
            align-items: flex-start;
            margin-bottom: 0.75rem;
        }

        .feature-icon {
            color: #f97316;
            margin-right: 0.5rem;
            margin-top: 0.25rem;
        }

        .history-dropdown {
            background-color: #f9fafb;
            border-radius: 0.5rem;
            padding: 1rem;
            cursor: pointer;
        }

        summary {
            font-weight: 500;
            font-size: 1.125rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        summary::-webkit-details-marker {
            display: none;
        }

        .card {
            background-color: #f9fafb;
            border-radius: 1rem;
            padding: 2rem;
            box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
        }

        .timeline {
            position: relative;
            padding-left: 1.25rem;
        }

        .timeline-line {
            position: absolute;
            left: 1rem;
            top: 0;
            bottom: 0;
            width: 2px;
            background-image: linear-gradient(to bottom, #f97316, #eab308);
        }

        .timeline-item {
            position: relative;
            margin-bottom: 2rem;
            padding-left: 2.5rem;
        }

        .timeline-number {
            position: absolute;
            left: -0.25rem;
            top: 0;
            width: 1.5rem;
            height: 1.5rem;
            background-color: #f97316;
            color: white;
            border-radius: 9999px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 0.75rem;
            font-weight: 700;
        }

        /* 반응형 설정 */
        @media (min-width: 768px) {
            .hero-title {
                font-size: 3.5rem;
            }

            .nav-links {
                display: flex;
                gap: 2rem;
            }

            .hero-content {
                display: flex;
                align-items: center;
                justify-content: space-between;
                margin-bottom: 3rem;
            }

            .hero-text {
                width: 50%;
            }

            .hero-image {
                width: 50%;
                display: flex;
                justify-content: center;
            }

            .intro-section {
                display: flex;
            }

            .intro-text {
                width: 50%;
                padding-right: 4rem;
            }

            .intro-card {
                width: 50%;
            }

            .stats-container {
                display: flex;
                justify-content: space-between;
            }
            /* 버튼 사이 간격 증가 */
            .hero-btns.flex.space-x-4 {
                gap: 1.5rem; /* space-x-4보다 더 큰 간격 */
            }
        }
    </style>
</head>
<body>
<header>
    <div class="container">
        <nav class="flex justify-between items-center mb-8">
            <div class="logo-container">
                <svg class="logo-icon" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M11.5 6.5V4.5H12.5V6.5H14V4.5H15V6.5H16V4.5H17V6.5H18V8.5H16.5C17.8807 8.5 19 9.61929 19 11V16C19 17.6569 17.6569 19 16 19H8C6.34315 19 5 17.6569 5 16V11C5 9.61929 6.11929 8.5 7.5 8.5H6V6.5H7V4.5H8V6.5H9V4.5H10V6.5H11.5ZM7.5 10.5C7.22386 10.5 7 10.7239 7 11V16C7 16.5523 7.44772 17 8 17H16C16.5523 17 17 16.5523 17 16V11C17 10.7239 16.7761 10.5 16.5 10.5H7.5ZM10 14H14V15H10V14ZM9 12H15V13H9V12Z" fill="currentColor"/>
                </svg>
                <h1 style="font-size: 1.5rem; font-weight: 700;">Bitcoin Insights</h1>
            </div>
            <div class="nav-links space-x-4">
                <a href="#introduction">Introduction</a>
                <a href="#outlook">Market Outlook</a>
                <a href="#price">Live Price</a>
                <a href="#resources">Resources</a>
            </div>
            <button class="subscribe-btn">
                Subscribe for Updates
            </button>
        </nav>

        <div class="hero-content">
            <div class="hero-text">
                <h2 class="hero-title">Understand Bitcoin and Cryptocurrency Markets</h2>
                <p class="hero-subtitle">Real-time insights, market analysis, and comprehensive information about the world's leading cryptocurrency</p>
                <div class="hero-btns flex space-x-4">
                    <button class="primary-btn">Live Bitcoin Price</button>
                    <button class="secondary-btn">Learn Bitcoin Basics</button>
                </div>
            </div>
            <div class="hero-image">
                <div class="bitcoin-icon">
                    <div class="bitcoin-icon-bg"></div>
                    <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M9.5 9.5C9.5 8.11929 10.6193 7 12 7H13.5C14.8807 7 16 8.11929 16 9.5C16 10.8807 14.8807 12 13.5 12H12.5H14C15.3807 12 16.5 13.1193 16.5 14.5C16.5 15.8807 15.3807 17 14 17H12C10.6193 17 9.5 15.8807 9.5 14.5" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M12 7V5.5M12 17V18.5" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </div>
            </div>
        </div>
    </div>

    <div class="stats-bar">
        <div class="container">
            <div class="stats-container">
                <div class="flex items-center space-x-2">
                    <span class="stat-label">BTC Price:</span>
                    <span class="stat-value">$46,823.45</span>
                    <span class="positive-change">+2.34%</span>
                </div>
                <div class="flex items-center space-x-2">
                    <span class="stat-label">24h Volume:</span>
                    <span class="stat-value">$32.8B</span>
                </div>
                <div class="flex items-center space-x-2">
                    <span class="stat-label">Market Cap:</span>
                    <span class="stat-value">$891.2B</span>
                </div>
                <div class="flex items-center space-x-2" style="display: none;">
                    <span class="material-symbols-outlined">trending_up</span>
                    <span class="stat-label">Updated 2 minutes ago</span>
                </div>
            </div>
        </div>
    </div>
</header>

<section id="introduction" class="section" style="background-color: white;">
    <div class="container">
        <div class="intro-section">
            <div class="intro-text">
                <h2 class="section-title">Introduction to Bitcoin</h2>
                <p class="section-content">Bitcoin is a decentralized digital currency created in 2009 by an unknown person or group of people using the name Satoshi Nakamoto. It operates without a central authority or banks, with transaction management and issuance of bitcoins carried out collectively by the network.</p>

                <div class="mb-8">
                    <h3 class="feature-title">Key Features</h3>
                    <ul class="feature-list" style="list-style: none;">
                        <li>
                            <span class="material-symbols-outlined feature-icon">check_circle</span>
                            <span><strong>Decentralized:</strong> No single entity controls Bitcoin</span>
                        </li>
                        <li>
                            <span class="material-symbols-outlined feature-icon">check_circle</span>
                            <span><strong>Limited Supply:</strong> Only 21 million bitcoins will ever exist</span>
                        </li>
                        <li>
                            <span class="material-symbols-outlined feature-icon">check_circle</span>
                            <span><strong>Transparent:</strong> All transactions are publicly recorded on the blockchain</span>
                        </li>
                        <li>
                            <span class="material-symbols-outlined feature-icon">check_circle</span>
                            <span><strong>Secure:</strong> Protected by cryptography and network consensus</span>
                        </li>
                    </ul>
                </div>

                <details class="history-dropdown">
                    <summary>
                        <span>The History of Bitcoin</span>
                        <span class="material-symbols-outlined">expand_more</span>
                    </summary>
                    <div style="padding-top: 1rem;">
                        <p>Bitcoin was introduced on October 31, 2008, with the publication of the Bitcoin whitepaper titled "Bitcoin: A Peer-to-Peer Electronic Cash System" by Satoshi Nakamoto. On January 3, 2009, the first block was mined, and the Bitcoin network was born. The true identity of Satoshi Nakamoto remains unknown to this day.</p>
                    </div>
                </details>
            </div>

            <div class="intro-card">
                <div class="card">
                    <h3 class="feature-title mb-6">How Bitcoin Works</h3>

                    <div class="timeline">
                        <div class="timeline-line"></div>

                        <div class="timeline-item">
                            <div class="timeline-number">1</div>
                            <h4 style="font-size: 1.125rem; font-weight: 500; margin-bottom: 0.5rem;">Transactions</h4>
                            <p style="color: #4b5563;">Users send and receive bitcoins using wallet software. Transactions are broadcast to the network and confirmed through a process called mining.</p>
                        </div>

                        <div class="timeline-item">
                            <div class="timeline-number">2</div>
                            <h4 style="font-size: 1.125rem; font-weight: 500; margin-bottom: 0.5rem;">Blockchain</h4>
                            <p style="color: #4b5563;">All confirmed transactions are included in the blockchain, a distributed public ledger that prevents double-spending and maintains the integrity of the network.</p>
                        </div>

                        <div class="timeline-item">
                            <div class="timeline-number">3</div>
                            <h4 style="font-size: 1.125rem; font-weight: 500; margin-bottom: 0.5rem;">Mining</h4>
                            <p style="color: #4b5563;">Mining is the process where specialized computers solve complex mathematical problems to validate and record transactions, receiving new bitcoins as a reward.</p>
                        </div>

                        <div class="timeline-item" style="margin-bottom: 0;">
                            <div class="timeline-number">4</div>
                            <h4 style="font-size: 1.125rem; font-weight: 500; margin-bottom: 0.5rem;">Wallets</h4>
                            <p style="color: #4b5563;">Bitcoin wallets store the private keys necessary to access and manage your bitcoin holdings, allowing you to send and receive funds.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 추가 섹션은 여기에 구현할 수 있습니다 -->
<section id="outlook" class="section" style="background-color: #f9fafb;">
    <div class="container">
        <h2 class="section-title">Market Outlook</h2>
        <p class="section-content">Bitcoin market analysis and future predictions from industry experts. Stay informed about the latest trends and factors affecting Bitcoin's price.</p>
        <!-- 여기에 차트와 전문가 분석 내용 추가 -->
    </div>
</section>

<section id="price" class="section" style="background-color: white;">
    <div class="container">
        <h2 class="section-title">Live Bitcoin Price</h2>
        <p class="section-content">Real-time Bitcoin price data, trading volume, and market comparisons.</p>
        <!-- 여기에 실시간 가격 데이터와 차트 추가 -->
    </div>
</section>

<section id="resources" class="section" style="background-color: #f9fafb;">
    <div class="container">
        <h2 class="section-title">Resources</h2>
        <p class="section-content">Educational resources, glossary of cryptocurrency terms, investment guides, and community links.</p>
        <!-- 여기에 리소스 링크와 카드 추가 -->
    </div>
</section>

<footer style="background-color: #1f2937; color: white; padding: 2rem 0;">
    <div class="container">
        <div style="display: flex; justify-content: space-between; flex-wrap: wrap;">
            <div style="margin-bottom: 1.5rem;">
                <h3 style="font-size: 1.25rem; font-weight: 600; margin-bottom: 1rem;">Bitcoin Insights</h3>
                <p style="max-width: 20rem; opacity: 0.8;">Your trusted source for Bitcoin information, market analysis, and cryptocurrency education.</p>
            </div>

            <div style="margin-bottom: 1.5rem;">
                <h4 style="font-size: 1rem; font-weight: 600; margin-bottom: 1rem;">Quick Links</h4>
                <ul style="list-style: none;">
                    <li style="margin-bottom: 0.5rem;"><a href="#introduction" style="color: white; text-decoration: none; opacity: 0.8;">Introduction</a></li>
                    <li style="margin-bottom: 0.5rem;"><a href="#outlook" style="color: white; text-decoration: none; opacity: 0.8;">Market Outlook</a></li>
                    <li style="margin-bottom: 0.5rem;"><a href="#price" style="color: white; text-decoration: none; opacity: 0.8;">Live Price</a></li>
                    <li><a href="#resources" style="color: white; text-decoration: none; opacity: 0.8;">Resources</a></li>
                </ul>
            </div>

            <div style="margin-bottom: 1.5rem;">
                <h4 style="font-size: 1rem; font-weight: 600; margin-bottom: 1rem;">Subscribe</h4>
                <p style="margin-bottom: 1rem; opacity: 0.8;">Get the latest Bitcoin news and updates directly to your inbox.</p>
                <div style="display: flex;">
                    <input type="email" placeholder="Your email" style="padding: 0.5rem; border-radius: 0.25rem 0 0 0.25rem; border: none; width: 15rem;">
                    <button style="background-color: #f97316; color: white; border: none; padding: 0.5rem 1rem; border-radius: 0 0.25rem 0.25rem 0; cursor: pointer;">Subscribe</button>
                </div>
            </div>
        </div>

        <div style="border-top: 1px solid rgba(255, 255, 255, 0.1); padding-top: 1.5rem; margin-top: 1.5rem; text-align: center; opacity: 0.6;">
            <p>&copy; 2025 Bitcoin Insights. All rights reserved.</p>
        </div>
    </div>
</footer>

<script>
    // 여기에 필요한 자바스크립트 코드를 추가할 수 있습니다
    document.addEventListener('DOMContentLoaded', function() {
        // 예: 미디어 쿼리에 따른 모바일 메뉴 토글 기능 등
    });
</script>
</body>
</html>
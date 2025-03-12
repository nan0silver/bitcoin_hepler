<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bitcoin Insights - 답변</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" rel="stylesheet">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            line-height: 1.6;
            color: #333;
            background-color: #f9fafb;
        }

        .container {
            width: 100%;
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
        }

        header {
            background-image: linear-gradient(to right, #f97316, #eab308);
            color: white;
            padding: 1.5rem 0;
            margin-bottom: 2rem;
            border-radius: 0.75rem;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
        }

        .header-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 2rem;
        }

        .logo-container {
            display: flex;
            align-items: center;
            gap: 0.75rem;
        }

        .logo-icon {
            width: 2.5rem;
            height: 2.5rem;
        }

        .back-btn {
            background-color: rgba(255, 255, 255, 0.2);
            color: white;
            border: none;
            border-radius: 9999px;
            padding: 0.5rem 1rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s;
        }

        .back-btn:hover {
            background-color: rgba(255, 255, 255, 0.3);
        }

        .answer-card {
            background-color: white;
            border-radius: 1rem;
            padding: 2rem;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
            margin-bottom: 2rem;
        }

        .question-label {
            font-size: 0.875rem;
            color: #6b7280;
            margin-bottom: 0.5rem;
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }

        .question-text {
            font-size: 1.5rem;
            font-weight: 700;
            color: #1f2937;
            margin-bottom: 2rem;
            padding-bottom: 1rem;
            border-bottom: 1px solid #e5e7eb;
        }

        .answer-content {
            font-size: 1.125rem;
            line-height: 1.7;
            color: #4b5563;
            padding: 10px;
        }

        .answer-content p {
            margin-bottom: 1rem;
        }

        .answer-content strong {
            color: #1f2937;
        }

        .answer-content ul, .answer-content ol {
            margin-left: 1.5rem;
            margin-bottom: 1rem;
        }

        .answer-meta {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 2rem;
            padding-top: 1rem;
            border-top: 1px solid #e5e7eb;
            font-size: 0.875rem;
            color: #6b7280;
        }

        .feedback-btns {
            display: flex;
            gap: 1rem;
        }

        .feedback-btn {
            background-color: #f3f4f6;
            border: none;
            border-radius: 0.5rem;
            padding: 0.5rem 1rem;
            font-size: 0.875rem;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.2s;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .feedback-btn:hover {
            background-color: #e5e7eb;
        }

        .related-questions {
            background-color: white;
            border-radius: 1rem;
            padding: 2rem;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
        }

        .related-title {
            font-size: 1.25rem;
            font-weight: 600;
            margin-bottom: 1.5rem;
            color: #1f2937;
        }

        .related-list {
            list-style: none;
        }

        .related-item {
            padding: 1rem;
            border-radius: 0.5rem;
            margin-bottom: 0.75rem;
            background-color: #f9fafb;
            cursor: pointer;
            transition: all 0.2s;
        }

        .related-item:hover {
            background-color: #f3f4f6;
        }

        .related-link {
            color: #4b5563;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 0.75rem;
        }

        .related-icon {
            color: #f97316;
        }

        @media (max-width: 768px) {
            .header-content {
                padding: 0 1rem;
            }

            .answer-card, .related-questions {
                padding: 1.5rem;
            }

            .question-text {
                font-size: 1.25rem;
            }

            .answer-content {
                font-size: 1rem;
            }
        }

        /* 답변 내용에서 글머리 기호 스타일링 */
        .answer-content ul {
            list-style: none;
            padding-left: 1.5rem;
        }

        .answer-content ul li {
            position: relative;
            margin-bottom: 0.5rem;
        }

        .answer-content ul li:before {
            content: '•';
            color: #f97316;
            font-weight: bold;
            position: absolute;
            left: -1.2rem;
        }
    </style>
</head>
<body>
<div class="container">
    <header>
        <div class="header-content">
            <div class="logo-container">
                <svg class="logo-icon" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M11.5 6.5V4.5H12.5V6.5H14V4.5H15V6.5H16V4.5H17V6.5H18V8.5H16.5C17.8807 8.5 19 9.61929 19 11V16C19 17.6569 17.6569 19 16 19H8C6.34315 19 5 17.6569 5 16V11C5 9.61929 6.11929 8.5 7.5 8.5H6V6.5H7V4.5H8V6.5H9V4.5H10V6.5H11.5ZM7.5 10.5C7.22386 10.5 7 10.7239 7 11V16C7 16.5523 7.44772 17 8 17H16C16.5523 17 17 16.5523 17 16V11C17 10.7239 16.7761 10.5 16.5 10.5H7.5ZM10 14H14V15H10V14ZM9 12H15V13H9V12Z" fill="currentColor"/>
                </svg>
                <h1 style="font-size: 1.5rem; font-weight: 700;">Bitcoin Insights</h1>
            </div>
            <a href="index.jsp" class="back-btn">
                <span class="material-symbols-outlined">arrow_back</span>
                <span>돌아가기</span>
            </a>
        </div>
    </header>

    <% if (session.getAttribute("answer") != null) { %>
    <div class="answer-card">
        <div class="question-label">질문</div>
        <div class="question-text"><%= session.getAttribute("question")%></div>

        <div class="answer-content">
            <%= session.getAttribute("answer")%>
        </div>
        <div class="answer-content">
            <%= session.getAttribute("thinking")%>
        </div>
        <div class="answer-content">
            <%= session.getAttribute("reasoning")%>
        </div>

        <div class="answer-meta">
            <span>마지막 업데이트: <%= new java.text.SimpleDateFormat("yyyy년 MM월 dd일").format(new java.util.Date()) %></span>

            <div class="feedback-btns">
                <button class="feedback-btn">
                    <span class="material-symbols-outlined">thumb_up</span>
                    <span>도움됨</span>
                </button>
                <button class="feedback-btn">
                    <span class="material-symbols-outlined">thumb_down</span>
                    <span>도움안됨</span>
                </button>
            </div>
        </div>
    </div>

    <div class="related-questions">
        <h3 class="related-title">관련 질문</h3>
        <ul class="related-list">
            <li class="related-item">
                <a href="#" class="related-link">
                    <span class="material-symbols-outlined related-icon">help_outline</span>
                    <span>비트코인과 도지코인의 차이점은 무엇인가요?</span>
                </a>
            </li>
            <li class="related-item">
                <a href="#" class="related-link">
                    <span class="material-symbols-outlined related-icon">help_outline</span>
                    <span>도지코인에 투자하는 방법은 무엇인가요?</span>
                </a>
            </li>
            <li class="related-item">
                <a href="#" class="related-link">
                    <span class="material-symbols-outlined related-icon">help_outline</span>
                    <span>암호화폐 지갑은 어떻게 안전하게 보관하나요?</span>
                </a>
            </li>
        </ul>
    </div>
    <% } else { %>
    <div class="answer-card">
        <div class="question-text">질문을 찾을 수 없습니다</div>
        <p>질문을 다시 시도해주세요.</p>
    </div>
    <% } %>
</div>

<script>
    // 피드백 버튼 기능
    document.querySelectorAll('.feedback-btn').forEach(button => {
        button.addEventListener('click', function() {
            // 여기에 피드백을 처리하는 코드를 추가할 수 있습니다
            alert('소중한 피드백 감사합니다!');
        });
    });

    // 관련 질문 링크
    document.querySelectorAll('.related-link').forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            // 여기에 관련 질문을 처리하는 코드를 추가할 수 있습니다
            const question = this.querySelector('span:last-child').textContent;
            window.location.href = 'index.jsp?question=' + encodeURIComponent(question);
        });
    });
</script>
</body>
</html>
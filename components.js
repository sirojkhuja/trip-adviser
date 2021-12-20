const questionCard = `
    <div class="question-card">
        <div class="question-block">
            <p class="question-title" id="question-text"></p>
            <br />
        </div>
        <div class="answer-block" id="answers-block"></div>
        <button class="btn next-btn" id="next-btn">Следующий вопрос</button>
    </div>
`;

const resultsCard = `
    <div class="result-card">
        <p class="result-title" id="result-text"></p>
        <div class="result-block" id="result-block">
            <center><h1>Рекомендуемые города</h1></center>
            <table id="result-table">
                <thead>
                    <tr>
                        <th>№</th>
                        <th>Рекомендуемый город</th>
                    </tr>
                </thead>
                <tbody id="table-data"></tbody>
            </table>
        </div>
        <button class="btn restart-btn" id="restart-btn" onclick="startOver()">Начать заново</button>
    </div>
`;
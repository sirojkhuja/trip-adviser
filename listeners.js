nextBtn.addEventListener("click", _ => {
    let paramsArr = JSON.parse(localStorage.getItem("params")) || [];
    let nextQuestionId = 0;
    let paramName = document.querySelector("#question-text").getAttribute("param-name");
    let paramValue = [];

    if (localStorage.getItem("current_question_id") == 11) {
        let checkedElements = document.querySelectorAll('input[name="answers"]:checked');
        checkedElements.forEach(el => {
            paramValue.push(el.getAttribute("param-value"));
        });
    } else {
        let answerEl = document.querySelector('input[name="answers"]:checked');
        paramValue = answerEl.getAttribute("param-value");
        nextQuestionId = answerEl.value;
    }

    paramsArr.push({ paramName, paramValue });
    
    localStorage.setItem("params", JSON.stringify(paramsArr))
    loadQuestion(nextQuestionId);
});
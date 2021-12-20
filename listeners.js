nextBtn.addEventListener("click", _ => {
    let paramsArr = JSON.parse(localStorage.getItem("params")) || [];
    let nextQuestionId = 0;
    if (localStorage.getItem("current_question_id") == 11) {
        let checkedElements = document.querySelectorAll('input[name="answers"]:checked');
        checkedElements.forEach(el => console.log(el));
    } else {
        let inputEl = document.querySelector('input[name="answers"]:checked');
        nextQuestionId = inputEl.value;
        let paramId = inputEl.getAttribute("param_id");
        let paramValueId = inputEl.getAttribute("param_value_id");
        paramsArr.push({ paramId, paramValueId });
    }
    localStorage.setItem("params", JSON.stringify(paramsArr))
    loadQuestion(nextQuestionId, paramsArr);
});
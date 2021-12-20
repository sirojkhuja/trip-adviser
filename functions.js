const loadQuestion = (questionId, params = false) => {
    localStorage.setItem("current_question_id", questionId);
    if (questionId == 0) {
        showResults(params);
    } else {
        fetch(`${API_BASE}?method=getQuestion&question_id=${questionId}`)
            .then(res => res.json())
            .then(data => {
                answersBlock.innerHTML = "";
                data.forEach((answer, index) => {
                    const { answer_title, id, question_title, next_question_id, param_id, param_value_id } = answer;
                    let inputType = "radio";
                    let checked = "";
                    if (questionId == 11) {
                        inputType = "checkbox";
                    } else {
                        checked = index == 0 ? 'checked="true"' : "";
                    }
                    questionText.textContent = question_title;
                    answersBlock.innerHTML += `
                        <label>
                            <input type="${inputType}" ${checked} name="answers" param_id="${param_id}" param_value_id="${param_value_id}" value="${next_question_id}" /> ${answer_title} 
                        </label></br>
                    `
                });
            })
            .catch(err => console.log(err));
    }
}

const showResults = (params) => {
    rootEl.innerHTML = resultsCard;
    fetch(`${API_BASE}`, {
        method: "POST",
        body: JSON.stringify({ params, method: "getResults" })
    })
        .then(res => res.json())
        .then(data => {
            console.log(data);
        })
        .catch(err => console.log(err));
}

const startOver = () => {
    location.reload();
}
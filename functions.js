const loadQuestion = (questionId) => {
    localStorage.setItem("current_question_id", questionId);
    if (questionId == 0) {
        showResults();
    } else {
        fetch(`${API_BASE}?method=getQuestion&question_id=${questionId}`)
            .then(res => res.json())
            .then(data => {
                answersBlock.innerHTML = "";
                questionText.textContent = data[0].question_title;
                questionText.setAttribute("param-name", data[0].param_name);

                data.forEach((answer, index) => {
                    const { answer_title, param_value, next_question_id } = answer;
                    let inputType = "radio";
                    let checked = "";
                    if (questionId == 11) {
                        inputType = "checkbox";
                    } else {
                        checked = index == 0 ? 'checked="true"' : "";
                    }
                    answersBlock.innerHTML += `
                        <label>
                            <input type="${inputType}" ${checked} name="answers" param-value="${param_value}" value="${next_question_id}" /> ${answer_title} 
                        </label></br>
                    `
                });
            })
            .catch(err => console.log(err));
    }
}

const showResults = () => {
    rootEl.innerHTML = resultsCard;
    let params = JSON.parse(localStorage.getItem("params"));
    console.log(params);
    fetch(`${API_BASE}`, {
        method: "POST",
        body: JSON.stringify({ params, method: "getResults" })
    })
        .then(res => res.json())
        .then(data => {
            let tBody = document.getElementById("table-data");
            console.log(data)

            if (data?.length > 0) {
                data.forEach((row, i) => {
                    tBody.innerHTML += `<tr>
                        <td>${i+1}</td>
                        <td>${row.city_title}</td>
                    </tr>`;
    
                });
            } else {
                tBody.innerHTML = '<tr><td colspan="2"><center>По вашим ответам рекомендаций нет.</center></td></tr>';
            }
        })
        .catch(err => console.log(err));
}

const startOver = () => {
    location.reload();
}
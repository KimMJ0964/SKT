window.onload = function() {
    // plusImg를 클릭했을 때 두 개의 버튼이 나타나도록 함
    document.querySelector('.plus img').addEventListener('click', function() {
        // 이미 버튼이 생성된 경우 중복 생성 방지
        if (document.querySelector('.action-buttons')) return;

        // 버튼을 추가할 div 생성
        const actionButtons = document.createElement('div');
        actionButtons.classList.add('action-buttons');

        const addDayButton = document.createElement('button');
        addDayButton.textContent = 'N일차';
        addDayButton.classList.add('add-day');

        const addCourseButton = document.createElement('button');
        addCourseButton.textContent = '다음코스';
        addCourseButton.classList.add('add-course');

        actionButtons.appendChild(addDayButton);
        actionButtons.appendChild(addCourseButton);

        // .actions 위에 버튼 추가 (수정/삭제 위로 이동)
        const actionsDiv = document.querySelector('.actions');
        actionsDiv.parentNode.insertBefore(actionButtons, actionsDiv);

        // N일차 버튼을 클릭하면 새로운 day를 추가하는 기능
        addDayButton.addEventListener('click', function() {
            const courseDetails = document.querySelector('.course-details');

            // 이미 존재하는 일차의 개수를 세고 그 다음 일차를 추가
            const dayCount = courseDetails.querySelectorAll('.day').length + 1;

            // 새로운 일차를 추가할 div 생성
            const newDay = document.createElement('div');
            newDay.classList.add('day');

            // 일차를 위한 제목 생성
            const newDayTitle = document.createElement('h3');
            newDayTitle.textContent = `${dayCount}일차`;

            newDay.appendChild(newDayTitle);
            courseDetails.appendChild(newDay);
        });

        // 다음코스 버튼을 클릭하면 time-place를 추가하는 기능
        addCourseButton.addEventListener('click', function() {
            const lastDay = document.querySelector('.course-details .day:last-child');

            // 시간과 관광지를 입력할 폼 생성
            const timePlaceForm = document.createElement('div');
            timePlaceForm.classList.add('time-place');

            const timeInput = document.createElement('input');
            timeInput.type = 'text';
            timeInput.placeholder = '시간 입력 (예: 9:00)';

            const placeInput = document.createElement('input');
            placeInput.type = 'text';
            placeInput.placeholder = '관광지 입력';

            timePlaceForm.appendChild(timeInput);
            timePlaceForm.appendChild(placeInput);

            lastDay.appendChild(timePlaceForm);

            // 입력 후 엔터를 누르면 리스트에 추가
            timeInput.addEventListener('keydown', function(event) {
                if (event.key === 'Enter') {
                    const timeText = document.createElement('p');
                    timeText.textContent = timeInput.value;
                    timePlaceForm.replaceChild(timeText, timeInput);
                }
            });

            placeInput.addEventListener('keydown', function(event) {
                if (event.key === 'Enter') {
                    const placeText = document.createElement('p');
                    placeText.textContent = placeInput.value;
                    timePlaceForm.replaceChild(placeText, placeInput);
                }
            });
        });
    });
};

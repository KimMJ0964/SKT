// 'E', 0
// 'I', 1
// 'N', 2
// 'S', 3
// 'T', 4
// 'F', 5
// 'P', 6
// 'J', 7

const qnaList = [
    {
      q: '축제에 온 당신, 주위에는 사람들이 많이 모여있습니다. 당신은 어떤 반응인가요?',
      a: [
        { answer: '조용한 곳을 찾아서 혼자 여유를 즐깁니다.', type: ['1'] },
        { answer: '사람들 사이에 섞여 축제를 다함께 즐깁니다.', type: ['0'] },
      ]
    },
    {
        q: '축제에서 당신이 반드시 참여하고 싶은 활동은 무엇인가요?',
      a: [
        { answer: '음식 시식 행사', type: ['3'] },
        { answer: '예술 작품 전시회 관람', type: ['2'] },
      ]
    },
    {
        q: '친구들과 함께 축제를 즐긴다면 당신이 주로 하는 역할은 무엇일까요?',
      a: [
        { answer: '축제에서 제공되는 다양한 활동들을 경험하게 하는 역할', type: ['1'] },
        { answer: '분위기를 띄우고 사람들과 함께 활발하게 노는 역할', type: ['0'] },
      ]
    },
    {
        q: '축제에 가기 전에 당신이 가장 기대하는 것은 무엇인가요?',
      a: [
        { answer: '새로운 사람들과의 만남과 즐거운 대화', type: ['6'] },
        { answer: '다양한 활동과 이벤트에 참여하여 즐기는 것', type: ['7'] },
      ]
    },
    {
        q: '축제에서 새로운 활동에 참여하기로 한 당신, 어떤 종류의 활동을 선택할까요?',
      a: [
        { answer: '아트워크에 참여하거나 작품을 만들어보기', type: ['5'] },
        { answer: '화려한 음악 공연이나 춤 춰보기', type: ['4'] },
      ]
    },
  
    {
        q: '축제에서 예상치 못한 작품을 만나게 된 당신, 당신의 반응은 어떨까요?',
      a: [
        { answer: '작품을 주의 깊게 살펴보고 감상한다.', type: ['3'] },
        { answer: '작품이 표현하는 아이디어나 메시지에 주목하고 새로운 인사이트를 얻고자 한다.', type: ['2'] },
      ]
    },
    {
        q: '축제가 끝난 후에 당신의 기억에 남는 순간은 무엇일까요?',
      a: [
        { answer: '맛있는 음식과 함께 한 시간', type: ['4'] },
        { answer: '아름다운 예술 작품을 감상한 순간', type: ['5'] },
      ]
    },
    {
        q: '축제에서 당신이 주로 참여하는 활동의 주제는 무엇인가요?',
      a: [
        { answer: '경험해보지 못한 새로운 활동', type: ['6'] },
        { answer: '축제의 주제와 취지에 맞는 활동', type: ['7'] },
      ]
    },
    {
        q: '축제에서 당신이 느끼는 가장 큰 흥미는 무엇인가요?',
      a: [
        { answer: '예술적인 표현과 아름다운 작품 감상', type: ['1'] },
        { answer: '활동적이고 경쟁적인 경험이나 스포츠', type: ['0'] },
      ]
    },
    {
        q: '축제에서 당신이 가장 중요하게 생각하는 것은 무엇인가요?',
      a: [
        { answer: '실제로 느낄 수 있는 감각적인 즐거움', type: ['6'] },
        { answer: '새로운 아이디어나 의미의 발견', type: ['7'] },
      ]
    },
    {
        q: '축제에서 당신이 가장 피하고 싶은 상황은 무엇일까요?',
      a: [
        { answer: '불필요한 갈등이나 제약을 겪는 일', type: ['4'] },
        { answer: '감정적인 갈등이나 불화', type: ['5'] },
      ]
    },
    {
        q: '축제에서 당신의 주요 목표는 무엇인가요?',
      a: [
        { answer: '즐거운 경험을 만들어 나와 주변 사람들의 기억에 남게하기', type: ['2'] },
        { answer: '최고의 음식과 음료를 찾아내어 맛보고 즐기기', type: ['3'] },
      ]
    }
  ]
  
  const infoList = [
	{
	    name: '불꽃축제',
	    tag1: '불꽃놀이',
	    tag2: '화려함',
	    tag3: '열정',
	    desc: '불꽃축제를 통해 밤하늘을 수놓는 화려한 불꽃쇼를 즐기며 축제의 열기를 만끽하고자 합니다.',
	    desc1: '화려하고 강렬한 불꽃놀이를 사랑하며, 다양한 불꽃쇼와 함께 음악과의 조화를 즐깁니다. 시각적으로 압도되는 경험을 선호합니다.'
	},
	{
	    name: '음악축제',
	    tag1: '음악',
	    tag2: '라이브',
	    tag3: '열정적',
	    desc: '음악을 사랑하는 이들에게 최고의 경험을 선사하는 라이브 음악 축제를 즐기고 싶어 합니다.',
	    desc1: '라이브 음악 공연을 즐기며, 다양한 장르의 음악을 한 곳에서 들을 수 있는 축제를 좋아합니다. 유명 아티스트의 공연이나 신나는 밴드 공연에 열정을 쏟습니다.'
	},
	{
	    name: '푸드 축제',
	    tag1: '음식',
	    tag2: '미식',
	    tag3: '다양함',
	    desc: '음식을 사랑하며 다양한 음식을 경험할 수 있는 푸드 축제에서 미식을 즐기고 싶어 합니다.',
	    desc1: '세계 각국의 다양한 요리를 맛볼 수 있는 축제를 선호하며, 특산물과 새로운 요리를 맛보는 것에 큰 흥미를 느낍니다.'
	},
	{
	    name: '문화예술 축제',
	    tag1: '예술',
	    tag2: '창의성',
	    tag3: '감성',
	    desc: '다양한 예술적 표현을 체험할 수 있는 문화예술 축제를 통해 창의적 에너지를 얻고 싶어 합니다.',
	    desc1: '미술, 공연, 영화 등 다양한 예술을 접할 수 있는 축제를 좋아하며, 예술 작품을 감상하고 창의력을 자극받는 경험을 중요하게 여깁니다.'
	},
	{
	    name: '전통문화 축제',
	    tag1: '전통',
	    tag2: '역사',
	    tag3: '문화체험',
	    desc: '전통문화와 역사를 체험할 수 있는 축제에서 과거의 이야기를 배우고 경험하고자 합니다.',
	    desc1: '역사적 배경이 있는 전통적인 프로그램에 관심이 많으며, 유적지 탐방, 전통 음식 체험 등 전통을 느낄 수 있는 활동을 좋아합니다.'
	},
	{
	    name: '스포츠 축제',
	    tag1: '스포츠',
	    tag2: '경쟁',
	    tag3: '활동적',
	    desc: '스포츠를 통해 신체적 활동과 즐거움을 느낄 수 있는 축제에서 열정을 발휘하고 싶어 합니다.',
	    desc1: '운동을 즐기며, 마라톤, 축구, 자전거 대회 등 신체적인 활동을 중시하는 축제를 좋아합니다. 경쟁적이고 활기찬 분위기를 선호합니다.'
	},
	{
	    name: '영화 축제',
	    tag1: '영화',
	    tag2: '감상',
	    tag3: '영감',
	    desc: '다양한 영화 작품을 감상하고, 영화 예술을 통해 새로운 영감을 얻고 싶어 합니다.',
	    desc1: '독립 영화부터 블록버스터까지 다양한 영화 장르를 감상할 수 있는 축제를 선호하며, 영화 상영뿐만 아니라 감독과의 만남이나 영화 워크숍에도 관심이 많습니다.'
	},
	{
	    name: '패션 축제',
	    tag1: '트렌드',
	    tag2: '스타일',
	    tag3: '창조적',
	    desc: '최신 패션 트렌드를 경험하고, 패션을 통해 자신을 표현할 수 있는 축제를 즐기고 싶어 합니다.',
	    desc1: '최신 유행을 따라가며, 패션쇼, 스타일링 워크숍 등 패션과 관련된 활동을 좋아합니다. 자신만의 스타일을 창조적으로 표현하는 것을 즐깁니다.'
	}
  ]
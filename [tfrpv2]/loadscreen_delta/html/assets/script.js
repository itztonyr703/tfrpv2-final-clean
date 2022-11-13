/*
	Developed by Lucky
	https://sergey-lucky.tebex.io/
	
	DISCORD: https://discord.gg/zb7DDq6B7j
*/

var BG = {
	
	/* settings */
	
	currentPage: `home`, // start page
	previewLogoTime: 3, // sec
	videoLink: `Wqsg2vWHZBM`, // youtube.com/watch?v=Wqsg2vWHZBM
	videoStartTime: 115,
	volume: 0.1,

	rulesContent: [{ 
			title:'Title rules 1', 
			text:[
                {n:`1.1`,t:'rules rules rules rules'},
                {n:`1.2`,t:'rules rules rules rules rules rules rules rules'},
                {n:`1.3`,t:'rules rules rules rules rules rules rules rules rules rules rules rules rules rules rules rules'}
            ]},{
			title:'', 
			text:[
			
            ]},{
			title:'', 
			text:[
			
            ]},{
			title:'', 
			text:[
			
            ]},{
			title:'', 
			text:[

            ]},{
			title:'', 
			text:[

            ]
		}
    ],
	
	newsContent: [
        {img: '', title:'Lowrider transport is played', data:'16.06.2021', text:'Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design.' },
		{img: '', title:'Crazy admins', data:'11.05.2021', text:'ATTENTION! ATTENTION! ATTENTION! admins are crazy. Stay at home, avoid popular places and a lot of people! admins are crazy. Stay at home, avoid popular places and a lot of people! admins are crazy. Stay at home, avoid popular places and a lot of people!' },
        {img: '', title:'News 9', data:'11.05.2021', text:'Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design.' },
        {img: '', title:'News 2', data:'11.05.2021', text:'Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design.Server news, latest updates, cool design. Server news, latest updates, cool design.' },
        {img: '', title:'News 3', data:'11.05.2021', text:'Server news, latest updates, cool design. Server news, latest updates, cool design.' },
        {img: '', title:'News 4', data:'11.05.2021', text:'Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design.' },
        {img: '', title:'News 6', data:'11.05.2021', text:'Server news, latest updates, cool design. Server news, latest updates, cool design. Server news, latest updates, cool design.' },
        {img: '', title:'News 7', data:'11.05.2021', text:'Server news, latest updates, cool design.' },
        {img: '', title:'News 8', data:'11.05.2021', text:'Server news, latest updates, cool design. Server news, latest updates, cool design.' },
        {img: '', title:'News 10', data:'11.05.2021', text:'Server news, latest updates, cool design. ' },
        {img: '', title:'News 11', data:'11.05.2021', text:'Server news, latest updates, cool design.' }
    ],
	
	contactsContent: [
        {avatar: 'assets/durk.png', title:'Durk', status:'Co-Owner', desc:'' },
        {avatar: 'assets/nova.png', title:'Nova', status:'Co-Owner', desc:''},
        {avatar: 'assets/duke.png', title:'201 Duke, C', status:'Admin', desc:'' },
        {avatar: 'assets/AJ.png', title:'AJ Barrister', status:'Admin', desc:'' },
        {avatar: 'assets/Jack.png', title:'Jack Yang', status:'Admin', desc:'' },
        {avatar: 'assets/billy.png', title:'thebigtatguy', status:'Admin', desc:'' },
        {avatar: 'assets/skoty.png', title:'FuckSkoty', status:'Admin', desc:''},
		{avatar: 'assets/noavatar.jpg', title:'Billy Race', status:'Moderator', desc:''},
		{avatar: 'assets/noavatar.jpg', title:'Strife', status:'Moderator', desc:''},
    ],
	
	musicList: [
        { name:'Track #1', link:'assets/1.mp3' },
        { name:'Track #2', link:'assets/2.mp3' },
        { name:'Track #3', link:'assets/3.mp3' },
        { name:'Track #4', link:'assets/4.mp3' },
        { name:'Track #5', link:'assets/5.mp3' },
        { name:'Track #6', link:'assets/6.mp3' },
        { name:'Track #7', link:'assets/7.mp3' },
        { name:'Track #8', link:'assets/8.mp3' },
        { name:'Track #9', link:'assets/9.mp3' },
        { name:'Track #10', link:'assets/10.mp3' },
        { name:'Track #11', link:'assets/11.mp3' },
        { name:'Track #12', link:'assets/12.mp3' },
        { name:'Track #13', link:'assets/13.mp3' },
        { name:'Track #14', link:'assets/14.mp3' },
        { name:'Track #15', link:'assets/15.mp3' },
        { name:'Track #16', link:'assets/16.mp3' },
        { name:'Track #17', link:'assets/17.mp3' },
        { name:'Track #18', link:'assets/18.mp3' },
        { name:'Track #19', link:'assets/19.mp3' },
        { name:'Track #20', link:'assets/20.mp3' },
        { name:'Track #21', link:'assets/21.mp3' },
        { name:'Track #22', link:'assets/22.mp3' },
        { name:'Track #23', link:'assets/23.mp3' },
        { name:'Track #24', link:'assets/24.mp3' },
        { name:'Track #25', link:'assets/25.mp3' }
    ],

	/* system */

	load: function()
	{
		BG.loadProgress.onStart();
		video_background.src = `https://www.youtube.com/embed/${BG.videoLink}?autoplay=1&amp&start=${BG.videoStartTime};showinfo=0&amp;controls=0&amp;loop=1&amp;playsinline=1&amp;mute=1&amp;rel=0&amp;playlist=${BG.videoLink};`;

		setTimeout(function()
		{
			BG.outPreview();
		}, BG.previewLogoTime*1000);
		
		BG.rulesContent.forEach((e) => { rules.innerHTML += BG.getRules(e); });
		BG.newsContent.forEach((e) => { news.innerHTML += BG.getNews(e); });
		BG.contactsContent.forEach((e) => { contacts.innerHTML += BG.getContacts(e); });
		
		C.loadCursor();
		BG.music.load();
	},
	
	getMusic: function(e)
	{
		return `<div class="music-volume">
					<img id="musicVolume" class="iconMusic" src="assets/volume-mute.png" onclick="BG.music.onClickMute()"/>
					<input id="musicVolumeSlider" type="range" min="0" max="1" step=".05" value="${BG.volume}" onchange="BG.music.onChangeVolume(this.value)" onmousemove="BG.music.onChangeVolumeMouseSlider(event, this.value)"/>
					<img id="musicMix" class="iconMusic" src="assets/mix.png" onclick="BG.music.onClickMix()"/>
					<audio id="audioblock" src="${e.link}"></audio>
				</div>
				<div id="musicDesc">${e.name}</div>`;
	},
	
	getContacts: function(e)
	{
		let result = ``;
		let img = e.avatar == `` ? `assets/logo-block.png"` : e.avatar;
		result += `	<div class="contact-item">
						<img class="contact-avatar" src="${img}"/>
						<div class="contact-item-info">
							<div class="contact-info-discord">${e.title}</div>
							<div class="contact-info-status">${e.status}</div>
							<div class="contact-info-desc">${e.desc}</div>
						</div>
					</div>
		`;
		
		return result;
	},
	
	getNews: function(e)
	{
		let result = ``;
		let img = e.img == `` ? `assets/logo-block.png"` : e.img;
		result += `	<div class="contact-item">
							<img class="news-image" src="${img}"/>
							<div class="contact-item-info">
								<div class="contact-info-discord">${e.title}</div>
								<div class="contact-info-status">${e.data}</div>
								<div class="contact-info-desc">${e.text}</div>
							</div>
						</div>
		`;
		
		return result;
	},
	
	getRules: function(e)
	{
		let result = `<div class="rules-heading">${e.title}</div>`;
		e.text.forEach((x) =>
		{
			result += `<div class="r">
							<div class="rn">${x.n}</div>
							<div class="rt">${x.t}</div>
						</div>
			`;
		});
		return result;
	},
	
	outPreview: function()
	{		
		video_background.classList.remove('video-background-hide');
		
		mainLogo.style.width = '250px';
		mainLogo.style.height = '100px';
		warpLogo.style.top = '5px';
		serverLogo.style.width = '48px';
		serverName.style.fontSize = '12pt';
		
		BG.changeContent(BG.currentPage);
		
		setTimeout(function(){
			warpContent.style.opacity = '1';
		}, 1200);
	},
	
	onClickItemMenu: function(x)
	{
		C.circles.push(new C.cursorBubbles(C.mouse.x, C.mouse.y, 4, 2));
		BG.changeContent(x);
	},
	delay: false,
	changeContent: function(x)
	{
		if (BG.currentPage != x && !BG.delay)
		{
			BG.currentPage = x;
			BG.delay = true;
			
			document.querySelectorAll('.main-menu-item-active').forEach((e) => {
				e.classList.toggle('main-menu-item-active');
			});
			window[x+`Menu`].classList.toggle('main-menu-item-active');
			
			content.style.opacity = '0';
			content.style.top = '30px';

			setTimeout(function()
			{
				document.querySelectorAll('.warp-content').forEach((e) =>
				{
					e.style.display = 'none';
				});		
				if(x !== 'home') window[`${x}`].style.display = 'flex';

				content.style.opacity = '1';
				content.style.top = '50px';
				BG.delay = false;
			}, 250);
		}
	},
	getRandomInRange: function(min,max)
    {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    },
	
	music: {
	
		isMuted: false,
		currentMusic: '',

		load: function()
		{
			BG.music.randomMusic();
		},
		
		randomMusic: function()
		{
			let idx = BG.getRandomInRange(0, BG.musicList.length - 1);
			while(BG.music.currentMusic == BG.musicList[idx].name)
			{
				idx = BG.getRandomInRange(0, BG.musicList.length - 1);
			}
			BG.music.currentMusic = BG.musicList[idx].name;
			
			musicContainer.innerHTML = BG.getMusic(BG.musicList[idx]);
			
			BG.music.isMuted ? audioblock.volume = 0 : audioblock.volume = BG.volume;
			BG.music.updateIcon();			
			audioblock.play();
		},
		
		onClickMute: function()
		{
			if (BG.music.isMuted)BG.music.onUnmuted();
			else BG.music.onMuted();
		},

		onClickMix: function()
		{
			BG.music.randomMusic();
		},

		onMuted: function()
		{
			BG.volume = musicVolumeSlider.value;

			musicVolumeSlider.value = 0;
			audioblock.volume = 0;

			musicVolume.src = "assets/volume-mute.png"
			BG.music.isMuted = true;
		},

		onUnmuted: function()
		{
			musicVolumeSlider.value = BG.volume;
			audioblock.volume = BG.volume;

			BG.music.updateIcon();
			BG.music.isMuted = false;
		},

		updateIcon: function()
		{
			if (BG.volume <= 0) musicVolume.src = "assets/volume-mute.png";
			else if(BG.volume < 0.5) musicVolume.src = "assets/volume-low.png";
			else musicVolume.src = "assets/volume-loud.png";
		},

		onChangeVolume: function(value)
		{
			BG.volume = value;
			audioblock.volume = value;
			if(BG.music.isMuted == true && value > 0) BG.music.isMuted = false;			
			BG.music.updateIcon();
		},

		onChangeVolumeMouseSlider: function(event, value)
		{
			if(event.buttons == 1) BG.music.onChangeVolume(value);
		}
	},
	loadProgress: {
		
		count: 0,
		thisCount: 0,
		
		handlers: 
		{
			startInitFunctionOrder(data) 
			{
				BG.loadProgress.count = data.count;
			},
			
			initFunctionInvoking(data) 
			{
				let localdata = ((data.idx / BG.loadProgress.count) * 100);
				BG.loadProgress.updateProgress(localdata);
			},
			
			startDataFileEntries(data) 
			{
				BG.loadProgress.count = data.count;
			},
			
			performMapLoadFunction(data) 
			{
				++BG.loadProgress.thisCount;
				let localdata = ((BG.loadProgress.thisCount / BG.loadProgress.count) * 100);
				BG.loadProgress.updateProgress(localdata);
			}
		},
		
		updateProgress: function(data)
		{
			progressBar.style.left = '0%';
			progressBar.style.width = data + '%';
		},
		
		onStart: function()
		{
			window.addEventListener('message', (e) => 
			{
				(BG.loadProgress.handlers[e.data.eventName] || function() { })(e.data);
			});
		}
	}
};

var C = {
	
	canvas: null,
	ct: null,
	circles: [],
	mouse: { x: 1000, y: 1000 },
	
	colorsMouse: [
		"rgba(255,200,100, x)"
	],
	
	loadCursor: function()
	{
		C.canvas = document.querySelector("canvas");
		C.canvas.width = innerWidth;
		C.canvas.height = innerHeight;
		C.ct = C.canvas.getContext("2d");
		C.mouse = { x: innerWidth / 2, y: innerHeight / 2 };		

		window.addEventListener("mousemove", function (e) 
		{
			cursor.style.left = e.x + "px";
			cursor.style.top = e.y + "px";
			C.mouse.x = e.x;
			C.mouse.y = e.y;
		});
		
		window.addEventListener("resize", function () 
		{
			C.canvas.width = innerWidth;
			C.canvas.height = innerHeight;
		});
		
		//C.circles.push(new C.cursorBubbles(C.mouse.x, C.mouse.y, 10, 5));
		
		C.animation(C.mouse.x, C.mouse.y);
	},
	
	cursorBubbles: function(x, y, r, growth, rand)
	{
		this.x = x;
		this.y = y;
		this.r = r;
		this.color = C.colorsMouse[Math.floor(Math.random() * C.colorsMouse.length)];
		this.alpha = 1;
		
		this.draw = function () 
		{
			C.ct.beginPath();
			C.ct.strokeStyle = this.color.replace("x", + this.alpha);
			C.ct.arc(this.x, this.y, this.r, Math.PI * 2, false);
			C.ct.lineWidth = 2;
			C.ct.stroke();
			C.ct.fillStyle = "transparent";
			C.ct.fill();			
		};

		this.update = function () 
		{
			this.alpha -= 0.070;
			this.r += growth;
			this.draw();
		};
	},
	
	animation: function()
	{
		requestAnimationFrame(C.animation);
		C.ct.clearRect(0, 0, innerWidth, innerHeight);
		
		//var r = Math.random() * 3 + 4;
		//C.circles.push(new C.cursorBubbles(C.mouse.x, C.mouse.y, r, -0.5));

		for (let i = 0; i < C.circles.length; ++i)
		{
			C.circles[i].update();
			if (C.circles[i].alpha < 0 || C.circles[i].r < 2) C.circles.splice(i, 1);		
			
		}
	}	
};
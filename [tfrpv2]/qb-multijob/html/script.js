
var width;
var height;

window.addEventListener('message', function(event) {
    let item = event.data;

    switch (item.type) {
        case "show":
            $('#jobMenu').show();
            break;
        case "hide":
            $('#jobMenu').hide();
            break;

        case "data":
              var data=event.data;
              var jobs=data.jobs;
              var currentJob=data.currentjob;
              var htmlData="";
              jobs.forEach(job => {
                  htmlData+=`<div class="card">
                  <div class="additional" style="background: ${job.jobtheme.color}">
                    <div class="user-card">
                      <div class="icon">
                        <i class="${job.jobtheme.icon} icon"></i>
                      </div>
                      <div class="level center">
                        ${job.label.split(" ")[0]}
                      </div>
                    </div>
                    <div class="more-info">
                                          
                      <div class="stats">
                        <div>
                          <i class="fa-solid fa-arrow-right-arrow-left" onclick="changeJob('${job.name}',${job.grade})"></i>
                        </div>
                        <div>
                          <i class="fa-solid fa-trash-can" onclick="deleteJob('${job.name}')" aria-hidden="true"></i>
                        </div>
                        
                      </div>
                    </div>
                  </div>
                  <div class="general">
                    <h2>${job.name.toUpperCase()}</h2>
                    <p></p>
                    <span class="more">Mouse over for more info</span>
                  </div>
                  </div>`
              });
              $('#jobMenu').html(htmlData)
        default:
    }
})

function deleteJob(jobname) {
  $.post(`https://${GetParentResourceName()}/deletejob`, JSON.stringify({jobname}));
}

function changeJob(jobname,grade) {
  $.post(`https://${GetParentResourceName()}/changejob`, JSON.stringify({jobname,grade}));
}

document.onkeyup = function (data) {
    if (data.which == 27) {
        $.post(`https://${GetParentResourceName()}/escape`, JSON.stringify({}));
    }
}

$('#jobMenu').hide();
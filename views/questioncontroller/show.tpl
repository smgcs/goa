<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">首页</a></li>
                    <li class="breadcrumb-item"><a href="javascript:void(0)">{{.question.Category.Name}}</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{.question.Title}}</li>
                </ol>
            </nav>
        </div>
        <div class="col-sm-9">
            <div class="card">
                <div class="card-header">
                <b>问题：</b>{{.question.Title}}
                </div>
                <div class="card-body">
                    <div class="question-description">
                    {{str2html .question.Description}}
                    </div>
                </div>
                <div class="card-footer">
                    <small>{{.question.Category.Name}} | {{.question.User.Nickname}} | {{.question.CreatedAt}}</small>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <ul class="list-group member-left-box text-center">
                <li class="list-group-item member-info-box">
                    <p>
                        <a href="{{urlfor "MemberController.Index"}}">
                            <img src="{{.question.User.Avatar}}" width="80" height="80" class="rounded-circle">
                        </a>
                    </p>
                    <p class="nickname">{{.question.User.Nickname}}</p>
                    {{if .question.User.Website}}
                        <p><a class="btn btn-primary mt-2 mb-2 btn-sm" href="{{.question.User.Website}}">个人站点</a></p>
                    {{end}}
                    {{if .question.User.Weibo}}
                    <p>微博：{{.question.User.Weibo}}</p>
                    {{end}}
                    {{if .question.User.Wechat}}
                        <p>微信：{{.question.User.Wechat}}</p>
                    {{end}}
                </li>
            </ul>
        </div>
    </div>
</div>
<div id="resume">
    <header id="header" class="clear">
        <div>
            <h1 class="name">{{ theme.resume.name }}</h1>
            <h2 class="label">{{ theme.resume.jobtitle }}</h2>
        </div>

        <span class="location">
            {% for item in theme.resume.location %}
            <span class="{{ item.key }}">{{ item.value }},</span>
            {% endfor %}
        </span>


        <div id="contact">
            {% for item in theme.resume.contact %}
            <div ">
                <span class=" fa {{item.icon}}"></span>
                <span class="url">
                    <a target="_blank" href="{{item.link}}">{{item.text}}</a>
                </span>
            </div>
            {% endfor %}
        </div>

        <div id="profiles">
            {% for item in theme.resume.profiles %}
            <div class="item">
                <div class="username">
                    <span class="fa {{item.icon}} social"></span>
                    <span class="url">
                        <a target="_blank" href="{{item.link}}">{{item.text}}</a>
                    </span>
                </div>
            </div>
            {% endfor %}
        </div>
    </header>

    <section class="section main-summary">
        <section>
            <div>
                <p>{{theme.resume.overview}}</p>
            </div>
        </section>
    </section>

    <section class="section margin1">
        <header>
            <h2 class="section-title">掌握技能</h2>
        </header>
        <section id="skills">
            {% for item in theme.resume.skills %}
            <div class="item">
                <h3 class="name">
                    {{item.title}}
                </h3>

                <div class="level {{item.level}}">
                    <em>{{item.level.toUpperCase()}}</em>
                    <div class="bar"></div>
                </div>
                <ul class="keywords">
                    {% for skill in item.items %}
                    <li>{{skill}}</li>
                    {% endfor %}
                </ul>
            </div>
            {% endfor %}
        </section>
    </section>

    <section class="section">
        <header>
            <h2 class="section-title">教育经历</span></h2>
        </header>
        <section id="education">
            {% for item in theme.resume.education %}
            <section class="education-item">
                <header>
                    <div class="header">
                        <div class="title">
                            <embed src="images/whu.svg" width="80" height="35" style="margin-bottom: -.8rem; margin-right: .2rem;"
                            type="image/svg+xml"
                            pluginspage="http://www.adobe.com/svg/viewer/install/" />
                        </div>
                        <div class="course">
                            {{item.course}}
                        </div>
                        <div class="date" style="margin-top: .7rem">
                            {{item.duration}}
                        </div>
                    </div>
                </header>

                <div class="item">
                    <div class="location">
                        <strong class="fa fa-map-marker"></strong> <span>{{item.location}}</span>
                    </div>
                </div>
            </section>
            {% endfor %}
        </section>
    </section>

    <section class="section" style="display: none;">
        <header>
            <h2 class="section-title">工作经历</span></h2>
        </header>
        <section id="work">
        {% for item in theme.resume.experience %}
        <section class="work-item">

            <input id="work-item-{{ loop.index }}" type="checkbox" class="toggle-item" checked="checked">
            <label for="work-item-{{ loop.index }}"></label>

            <header>
                <div class="position">{{item.position}}</div>
                <div class="company">{{item.company}}</div>
                <div class="date">{{item.duration}}</div>
            </header>

            <span class="website">
                <a target="_blank" href="{{item.website}}">{{item.website}}</a>
            </span>
            <div class="item" id="work-item">
                <div class="summary">
                    <p></p>
                    <p>{{item.description}}</p>
                    <p></p>
                </div>
                <ul class="highlights">
                    {% for hilight in item.hilights %}
                    <li>
                        <p>{{hilight}}</p>
                    </li>
                    {% endfor %}

                </ul>
            </div>
        </section>
        {% endfor %}
        </section>
    </section>

    <section class="section">
        <header>
            <h2 class="section-title">主要项目</h2>
        </header>
        {% for item in theme.resume.projects %}
        <section id="project">
            <section class="project-item">
                <input id="project-item-{{ loop.index }}" type="checkbox" class="toggle-item" checked="checked">
                <label for="project-item-{{ loop.index }}"></label>

                <header>
                    <div class="header">
                        <div class="title">
                            {{item.title}}
                        </div>
                        <div class="contribution">
                            {{item.contribution}}
                        </div>
                        <div class="date">
                            {{item.duration}}
                        </div>
                    </div>
                </header>

                <div class="item">
                    <div class="summary">
                        <p></p>
                        <p>{{item.description}}</p>
                        <p></p>
                    </div>

                    <ul class="highlights">
                    {% for hilight in item.hilights %}
                    <li>
                        <p>{{hilight}}</p>
                    </li>
                    {% endfor %}
                    </ul>
                </div>
            </section>
        </section>
        {% endfor %}
    </section>

    <section class="section">
        
        <header>
            <h2 class="section-title">获奖情况</h2>
        </header>
        
        <section>
            <section class="award-item">
                <input id="rewards-scholarship" type="checkbox" class="toggle-item" checked="checked">
                <label for="rewards-scholarship"></label>
                <header>
                    <div class="header">
                        <div class="title">个人荣誉</div>
                        <div class="awarder">Personal Honor</div>
                    </div>
                </header>
                <div class="item">
                <ul class="reward-highlight">
                {% for item in theme.resume.rewards.scholarship %}
                    <li>
                    <div>
                        <p>{{item.title}}</p>
                    </div>
                    </li>
                {% endfor %}
                </ul>
                </div>
            </section>
            <section class="award-item">
                <input id="rewards-competition" type="checkbox" class="toggle-item" checked="checked">
                <label for="rewards-competition"></label>
                <header>
                    <div class="header">
                        <div class="title">竞赛获奖</div>
                        <div class="awarder">Competition Awards</div>
                    </div>
                </header>
                <div class="item">
                <ul class="reward-highlight">
                {% for item in theme.resume.rewards.competition %}
                    <li>
                    <p>{{item.title}}</p>
                    </li>
                {% endfor %}
                </ul>
                </div>
            </section>
        </section>
        
    </section>

    <section class="section margin1">
        <header>
            <h2 class="section-title">语言成绩</h2>
        </header>
        <section id="languages">
            {% for item in theme.resume.languages %}
            <div class="display">
                <h3 class="language">
                    {{item.name}}
                </h3>
                <div class="item">
                    <div class="level fluency {{item.proficiency}}">
                        <em>{{item.proficiency.toUpperCase()}}</em>
                        <div class="bar"></div>
                    </div>
                </div>
            </div>
            {% endfor %}
        </section>
    </section>

</div>
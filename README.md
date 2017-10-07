# Warming Up For Flash Message
# copyright LikeLion at SKHU
# Jo Min Kuk & Park So Hee

##Explane Start

# devise gem 설치
1. bundle
2. rails g devise:install
3. rails g devise MODEL
4. rails g devise:views
but, no beautiful
5. rails d devise:views
6. rails g devise:views:bootstrap_templates
yes, beautiful

# devise gem에 bootstrap을 적용하기 위해서 CDN 대신 아래 gem을 사용한다.
gem 'bootstrap-sass', '~> 3.3.6'
# bootstrap-sass를 사용하기 위해 해야할 일
[첫번째]
app/assets/javascripts/application.js
//= require bootstrap-sprockets 추가
[두번째]
app/assets/stylesheets/custom.scss 생성
@import "bootstrap-sprockets";
@import "bootstrap";

# devise:views:bootstrap_templates를 사용하기 위해 gem 설치
gem 'devise-bootstrap-views'

# bootstrap_form gem 설치
# bootstrap_form을 사용하기 위해 해야할 일
app/assets/stylesheets/custom.scss
@import "rails_bootstrap_forms";



## 루비를 좀 더 고급지게 하고 싶다면
# <%= link_to 'text', 경로 %>
html의 a 태그를 대체하는 것이라고 생각하면 쉽다.
Ex)
<%= link_to 'text', 경로, method: :방식 %>
logout은 delete 방식으로 처리되기 때문에 method: :delete를 붙여줘야 한다.

# <%= render 'partial의 경로' %>
ex) layouts/header
header를 부품으로 _header로 만들어서 partial로 사용.



### 기타 사항
# heroku run rake db:migrate
헤로쿠에서 db migrate 하는 법

# rake notes
<% TODO: anything %>

# rake routes
rails가 지어주는 path 이름을 알 수 있다.

# Editor (tinymce_rails) 사용 방법
1. gem 'tinymce_rails' bundle install
2. config 폴더에 tinymce.yml 생성
3. tinymce.yml 파일에 아래 내용 추가
toolbar:
  - stylesheet | bold italic | undo redo
  - image | link
plugins:
  - image
  - link
4. app/assets/javascripts/application.js 에 아래 내용 추가
//= require tinymce-jquery
Warming Up For Flash Message
copyright LikeLion at SKHU
Jo Min Kuk & Park So Hee

#Explane Start

## gem 'devise'
1. bundle
2. rails g devise:install
3. rails g devise MODEL(User)
4. rails g devise:views
but, no beautiful
5. rails d devise:views
6. rails g devise:views:bootstrap_templates
yes, beautiful

## Instead of CDN, 'bootstrap-sass' for devise
gem 'bootstrap-sass', '~> 3.3.6' install

## How to use 'bootstrap-sass'
1. app/assets/javascripts/application.js
2. //= require bootstrap-sprockets 추가
3. app/assets/stylesheets/custom.scss 생성
4. custom.scss에 5,6 선언
5. @import "bootstrap-sprockets";
6. @import "bootstrap";

## How to use devise:views:bootstrap_templates
gem 'devise-bootstrap-views' install

## How to use 'bootstrap_form'
1. app/assets/stylesheets/custom.scss
2. @import "rails_bootstrap_forms"; 선언



# For High Quality Ruby on Rails
## <%= link_to 'text', root_path %>
1. html의 a 태그를 대체하는 것이라고 생각하면 쉽다.
2. Ex)
3. <%= link_to 'text', 경로, method: :방식 %>
4. logout은 delete 방식으로 처리되기 때문에 method: :delete를 붙여줘야 한다.

## <%= render 'layouts/header' %>
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
3. tinymce.yml 파일에 내용 추가
4. app/assets/javascripts/application.js 에 아래 내용 추가
5. //= require tinymce-jquery
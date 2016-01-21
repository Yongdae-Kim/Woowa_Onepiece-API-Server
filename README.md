# Luffy(Ruby on Rails API Server)

[![Build Status](https://travis-ci.org/Yongdae-Kim/Woowa_Onepiece-API-Server.svg?branch=master)](https://travis-ci.org/Yongdae-Kim/Woowa_Onepiece-API-Server)

## 명대사

### "난 해적왕이 될 거야!"

![해적왕](https://attachment.namu.wiki/%EB%AA%BD%ED%82%A4%20D.%20%EB%A3%A8%ED%94%BC__Example4.jpg "루피")

***
## 원피스 프로젝트

### 제주 버스 정류장의 위치 정보를 중심으로 버스 시간 및 주변 볼거리, 먹거리, 광고 정보를 제공해 주는 서비스

***
## 개발환경

- Ruby 버전 : 2.3.0
- Rails 버전 : 5.0.0.beta1
- Gem 버전: 2.5.1
- Bundle 버전 : 1.11.2

***

## 코드 품질 분석

#### Travis CI
- <https://travis-ci.org/Yongdae-Kim/Woowa_Onepiece-API-Server>

#### Codacy
- <https://www.codacy.com/app/yongdae91/Woowa_Onepiece-API-Server/dashboard>

***

## 데이터베이스 초기화

```
vi seeds.rb
rake db:migrate:reset
rake db:setup
```

***

##  라우트 정의

```
vi config/routes.rb
rake routes
```

- <http://localhost:3000/rails/info/routes>

***

## 버스(Bus) API 명세

#### 버스 목록 API 명세

- <http://localhost:3000/api/buses.json>

#### 버스 목록 API 명세(요일코드별)

- <http://localhost:3000/api/buses.json?code={code}>

- | 코드     | 요일     |
| :------: | :------: |
| 1        | 평  일   |
| 2        | 토요일   |
| 3        | 일요일   |
| 4        | 공휴일   |

#### 버스 상세 API 명세

- <http://localhost:3000/api/buses/{id}.json>

***

## 버스 정류장(BusStop) API 명세

#### 버스 정류장 목록 API 명세

- <http://localhost:3000/api/bus_stops.json>

#### 버스 정류장 상세 API 명세

- <http://localhost:3000/api/bus_stops/{id}.json>

#### 버스 정류장 상세 광고 목록 API 명세

- <http://localhost:3000/api/bus_stops/{bus_stop_id}/ads.json>

#### 버스 정류장 상세 광고 상세 API 명세

- <http://localhost:3000/api/bus_stops/{bus_stop_id}/ads/{id}.json>

***

## 광고(Ad) API 명세

***

### 광고 목록 API 명세

- <http://localhost:3000/api/ads.json>

#### 광고 목록 API 명세(광고코드별)

- <http://localhost:3000/api/ads.json?code={code}>

- | 코드     | 광고     |
| :------: | :------: |
| 1        | 음  식   |
| 2        | 문  화   |
| 3        | 매  장   |
| 4        | 기  타   |

#### 광고 목록 API 명세(갯수별)

- <http://localhost:3000/api/ads.json?cnt={cnt}>

***

### 광고 상세 API 명세

- <http://localhost:3000/api/ads/{id}.json>

***

## 이미지(Img) API 명세

#### 이미지 목록 API 명세

- <http://localhost:3000/api/imgs.json>

#### 이미지 상세 API 명세

- <http://localhost:3000/api/imgs/{id}.json>

***


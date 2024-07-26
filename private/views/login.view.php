<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/all.min.css">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="viewport" content= "width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Login</title>
</head>
<style>
    html {
  height: 100%;
  margin: 0;
  padding: 0;
}
body {
    background: radial-gradient(circle, #24246e, #06051f);
    overflow: hidden;
    position: relative;
    width: 100vw;
    height: 100vh;
}
body:active div,
body:active div::before,
body:active div::after {
    padding: 40px;
}

div,
div::before,
div::after {
    content: '';
    position: fixed;
    top: 0;
    left: 0;
    opacity: 0.9;
    -webkit-transform-origin: top;
            transform-origin: top;
    transition: all 5s linear 0s;
}

.purple {
    -webkit-animation: purple linear 30s alternate infinite;
            animation: purple linear 30s alternate infinite;
    border: 2px solid #241379;
    border-radius: 100%;
    width: 20px;
    height: 20px;
    -webkit-transform: translate3d(80vw, 42vh, 0);
            transform: translate3d(80vw, 42vh, 0);
    z-index: 6;
}

.purple::before {
    -webkit-animation: purple-pseudo linear 15s alternate infinite;
            animation: purple-pseudo linear 15s alternate infinite;
    background: #241379;
    border: 2px solid #241379;
    width: 45px;
    height: 44px;
    -webkit-transform: translate3d(7vw, -33vh, 0) rotate(77deg);
            transform: translate3d(7vw, -33vh, 0) rotate(77deg);
}

.purple::after {
    -webkit-animation: purple-pseudo linear 20s alternate infinite;
            animation: purple-pseudo linear 20s alternate infinite;
    border: 2px solid #241379;
    width: 9px;
    height: 36px;
    -webkit-transform: translate3d(-13vw, 21vh, 0) rotate(48deg);
            transform: translate3d(-13vw, 21vh, 0) rotate(48deg);
}

@-webkit-keyframes purple {
    50% {
        -webkit-transform: translate3d(43vw, 88vh, 0);
                transform: translate3d(43vw, 88vh, 0);
    }
    100% {
        -webkit-transform: translate3d(22vw, 12vh, 0);
                transform: translate3d(22vw, 12vh, 0);
    }
}

@keyframes purple {
    50% {
        -webkit-transform: translate3d(43vw, 88vh, 0);
                transform: translate3d(43vw, 88vh, 0);
    }
    100% {
        -webkit-transform: translate3d(22vw, 12vh, 0);
                transform: translate3d(22vw, 12vh, 0);
    }
}
@-webkit-keyframes purple-pseudo {
    33% {
        -webkit-transform: translate3d(-9vw, -53vh, 0) rotate(2deg);
                transform: translate3d(-9vw, -53vh, 0) rotate(2deg);
    }
    100% {
        -webkit-transform: translate3d(-1vw, 29vh, 0) rotate(132deg);
                transform: translate3d(-1vw, 29vh, 0) rotate(132deg);
    }
}
@keyframes purple-pseudo {
    33% {
        -webkit-transform: translate3d(-9vw, -53vh, 0) rotate(2deg);
                transform: translate3d(-9vw, -53vh, 0) rotate(2deg);
    }
    100% {
        -webkit-transform: translate3d(-1vw, 29vh, 0) rotate(132deg);
                transform: translate3d(-1vw, 29vh, 0) rotate(132deg);
    }
}
.medium-blue {
    -webkit-animation: medium-blue linear 30s alternate infinite;
            animation: medium-blue linear 30s alternate infinite;
    border: 2px solid #2185bf;
    border-radius: 100%;
    width: 15px;
    height: 15px;
    -webkit-transform: translate3d(79vw, 13vh, 0);
            transform: translate3d(79vw, 13vh, 0);
    z-index: 11;
}

.medium-blue::before {
    -webkit-animation: medium-blue-pseudo linear 15s alternate infinite;
            animation: medium-blue-pseudo linear 15s alternate infinite;
    background: #2185bf;
    border: 2px solid #2185bf;
    width: 46px;
    height: 48px;
    -webkit-transform: translate3d(-19vw, 86vh, 0) rotate(94deg);
            transform: translate3d(-19vw, 86vh, 0) rotate(94deg);
}

.medium-blue::after {
    -webkit-animation: medium-blue-pseudo linear 20s alternate infinite;
            animation: medium-blue-pseudo linear 20s alternate infinite;
    border: 2px solid #2185bf;
    width: 47px;
    height: 46px;
    -webkit-transform: translate3d(2vw, 6vh, 0) rotate(180deg);
            transform: translate3d(2vw, 6vh, 0) rotate(180deg);
}

@-webkit-keyframes medium-blue {
    50% {
        -webkit-transform: translate3d(13vw, 74vh, 0);
                transform: translate3d(13vw, 74vh, 0);
    }
    100% {
        -webkit-transform: translate3d(66vw, 43vh, 0);
                transform: translate3d(66vw, 43vh, 0);
    }
}

@keyframes medium-blue {
    50% {
        -webkit-transform: translate3d(13vw, 74vh, 0);
                transform: translate3d(13vw, 74vh, 0);
    }
    100% {
        -webkit-transform: translate3d(66vw, 43vh, 0);
                transform: translate3d(66vw, 43vh, 0);
    }
}
@-webkit-keyframes medium-blue-pseudo {
    33% {
        -webkit-transform: translate3d(63vw, -45vh, 0) rotate(225deg);
                transform: translate3d(63vw, -45vh, 0) rotate(225deg);
    }
    100% {
        -webkit-transform: translate3d(-34vw, 53vh, 0) rotate(64deg);
                transform: translate3d(-34vw, 53vh, 0) rotate(64deg);
    }
}
@keyframes medium-blue-pseudo {
    33% {
        -webkit-transform: translate3d(63vw, -45vh, 0) rotate(225deg);
                transform: translate3d(63vw, -45vh, 0) rotate(225deg);
    }
    100% {
        -webkit-transform: translate3d(-34vw, 53vh, 0) rotate(64deg);
                transform: translate3d(-34vw, 53vh, 0) rotate(64deg);
    }
}
.light-blue {
    -webkit-animation: light-blue linear 30s alternate infinite;
            animation: light-blue linear 30s alternate infinite;
    border: 2px solid #1fbce1;
    border-radius: 100%;
    width: 30px;
    height: 30px;
    -webkit-transform: translate3d(93vw, 71vh, 0);
            transform: translate3d(93vw, 71vh, 0);
    z-index: 6;
}

.light-blue::before {
    -webkit-animation: light-blue-pseudo linear 15s alternate infinite;
            animation: light-blue-pseudo linear 15s alternate infinite;
    background: #1fbce1;
    border: 2px solid #1fbce1;
    width: 46px;
    height: 26px;
    -webkit-transform: translate3d(-8vw, 2vh, 0) rotate(12deg);
            transform: translate3d(-8vw, 2vh, 0) rotate(12deg);
}

.light-blue::after {
    -webkit-animation: light-blue-pseudo linear 20s alternate infinite;
            animation: light-blue-pseudo linear 20s alternate infinite;
    border: 2px solid #1fbce1;
    width: 29px;
    height: 13px;
    -webkit-transform: translate3d(-67vw, -46vh, 0) rotate(119deg);
            transform: translate3d(-67vw, -46vh, 0) rotate(119deg);
}

@-webkit-keyframes light-blue {
    50% {
        -webkit-transform: translate3d(52vw, 24vh, 0);
                transform: translate3d(52vw, 24vh, 0);
    }
    100% {
        -webkit-transform: translate3d(34vw, 93vh, 0);
                transform: translate3d(34vw, 93vh, 0);
    }
}

@keyframes light-blue {
    50% {
        -webkit-transform: translate3d(52vw, 24vh, 0);
                transform: translate3d(52vw, 24vh, 0);
    }
    100% {
        -webkit-transform: translate3d(34vw, 93vh, 0);
                transform: translate3d(34vw, 93vh, 0);
    }
}
@-webkit-keyframes light-blue-pseudo {
    33% {
        -webkit-transform: translate3d(-36vw, -7vh, 0) rotate(159deg);
                transform: translate3d(-36vw, -7vh, 0) rotate(159deg);
    }
    100% {
        -webkit-transform: translate3d(3vw, -28vh, 0) rotate(162deg);
                transform: translate3d(3vw, -28vh, 0) rotate(162deg);
    }
}
@keyframes light-blue-pseudo {
    33% {
        -webkit-transform: translate3d(-36vw, -7vh, 0) rotate(159deg);
                transform: translate3d(-36vw, -7vh, 0) rotate(159deg);
    }
    100% {
        -webkit-transform: translate3d(3vw, -28vh, 0) rotate(162deg);
                transform: translate3d(3vw, -28vh, 0) rotate(162deg);
    }
}
.red {
    -webkit-animation: red linear 30s alternate infinite;
            animation: red linear 30s alternate infinite;
    border: 2px solid #b62f56;
    border-radius: 100%;
    width: 34px;
    height: 34px;
    -webkit-transform: translate3d(98vw, 40vh, 0);
            transform: translate3d(98vw, 40vh, 0);
    z-index: 9;
}

.red::before {
    -webkit-animation: red-pseudo linear 15s alternate infinite;
            animation: red-pseudo linear 15s alternate infinite;
    background: #b62f56;
    border: 2px solid #b62f56;
    width: 13px;
    height: 29px;
    -webkit-transform: translate3d(-9vw, 30vh, 0) rotate(327deg);
            transform: translate3d(-9vw, 30vh, 0) rotate(327deg);
}

.red::after {
    -webkit-animation: red-pseudo linear 20s alternate infinite;
            animation: red-pseudo linear 20s alternate infinite;
    border: 2px solid #b62f56;
    width: 9px;
    height: 8px;
    -webkit-transform: translate3d(-79vw, 16vh, 0) rotate(229deg);
            transform: translate3d(-79vw, 16vh, 0) rotate(229deg);
}

@-webkit-keyframes red {
    50% {
        -webkit-transform: translate3d(44vw, 1vh, 0);
                transform: translate3d(44vw, 1vh, 0);
    }
    100% {
        -webkit-transform: translate3d(72vw, 64vh, 0);
                transform: translate3d(72vw, 64vh, 0);
    }
}

@keyframes red {
    50% {
        -webkit-transform: translate3d(44vw, 1vh, 0);
                transform: translate3d(44vw, 1vh, 0);
    }
    100% {
        -webkit-transform: translate3d(72vw, 64vh, 0);
                transform: translate3d(72vw, 64vh, 0);
    }
}
@-webkit-keyframes red-pseudo {
    33% {
        -webkit-transform: translate3d(49vw, 97vh, 0) rotate(133deg);
                transform: translate3d(49vw, 97vh, 0) rotate(133deg);
    }
    100% {
        -webkit-transform: translate3d(-27vw, 33vh, 0) rotate(36deg);
                transform: translate3d(-27vw, 33vh, 0) rotate(36deg);
    }
}
@keyframes red-pseudo {
    33% {
        -webkit-transform: translate3d(49vw, 97vh, 0) rotate(133deg);
                transform: translate3d(49vw, 97vh, 0) rotate(133deg);
    }
    100% {
        -webkit-transform: translate3d(-27vw, 33vh, 0) rotate(36deg);
                transform: translate3d(-27vw, 33vh, 0) rotate(36deg);
    }
}
.orange {
    -webkit-animation: orange linear 30s alternate infinite;
            animation: orange linear 30s alternate infinite;
    border: 2px solid #d5764c;
    border-radius: 100%;
    width: 38px;
    height: 38px;
    -webkit-transform: translate3d(4vw, 59vh, 0);
            transform: translate3d(4vw, 59vh, 0);
    z-index: 11;
}

.orange::before {
    -webkit-animation: orange-pseudo linear 15s alternate infinite;
            animation: orange-pseudo linear 15s alternate infinite;
    background: #d5764c;
    border: 2px solid #d5764c;
    width: 23px;
    height: 27px;
    -webkit-transform: translate3d(88vw, -20vh, 0) rotate(291deg);
            transform: translate3d(88vw, -20vh, 0) rotate(291deg);
}

.orange::after {
    -webkit-animation: orange-pseudo linear 20s alternate infinite;
            animation: orange-pseudo linear 20s alternate infinite;
    border: 2px solid #d5764c;
    width: 25px;
    height: 42px;
    -webkit-transform: translate3d(90vw, -44vh, 0) rotate(282deg);
            transform: translate3d(90vw, -44vh, 0) rotate(282deg);
}

@-webkit-keyframes orange {
    50% {
        -webkit-transform: translate3d(74vw, 52vh, 0);
                transform: translate3d(74vw, 52vh, 0);
    }
    100% {
        -webkit-transform: translate3d(93vw, 78vh, 0);
                transform: translate3d(93vw, 78vh, 0);
}
}

@keyframes orange {
    50% {
        -webkit-transform: translate3d(74vw, 52vh, 0);
                transform: translate3d(74vw, 52vh, 0);
    }
    100% {
        -webkit-transform: translate3d(93vw, 78vh, 0);
                transform: translate3d(93vw, 78vh, 0);
    }
}
@-webkit-keyframes orange-pseudo {
    33% {
        -webkit-transform: translate3d(-73vw, -36vh, 0) rotate(320deg);
                transform: translate3d(-73vw, -36vh, 0) rotate(320deg);
    }
    100% {
        -webkit-transform: translate3d(-77vw, -67vh, 0) rotate(211deg);
                transform: translate3d(-77vw, -67vh, 0) rotate(211deg);
    }
}
@keyframes orange-pseudo {
    33% {
        -webkit-transform: translate3d(-73vw, -36vh, 0) rotate(320deg);
                transform: translate3d(-73vw, -36vh, 0) rotate(320deg);
    }
    100% {
        -webkit-transform: translate3d(-77vw, -67vh, 0) rotate(211deg);
                transform: translate3d(-77vw, -67vh, 0) rotate(211deg);
    }
}
.yellow {
    -webkit-animation: yellow linear 30s alternate infinite;
            animation: yellow linear 30s alternate infinite;
    border: 2px solid #ffd53e;
    border-radius: 100%;
    width: 7px;
    height: 7px;
    -webkit-transform: translate3d(10vw, 84vh, 0);
            transform: translate3d(10vw, 84vh, 0);
    z-index: 4;
}

.yellow::before {
    -webkit-animation: yellow-pseudo linear 15s alternate infinite;
            animation: yellow-pseudo linear 15s alternate infinite;
    background: #ffd53e;
    border: 2px solid #ffd53e;
    width: 29px;
    height: 16px;
    -webkit-transform: translate3d(69vw, -57vh, 0) rotate(83deg);
            transform: translate3d(69vw, -57vh, 0) rotate(83deg);
}

.yellow::after {
    -webkit-animation: yellow-pseudo linear 20s alternate infinite;
            animation: yellow-pseudo linear 20s alternate infinite;
    border: 2px solid #ffd53e;
    width: 27px;
    height: 16px;
    -webkit-transform: translate3d(33vw, -51vh, 0) rotate(170deg);
            transform: translate3d(33vw, -51vh, 0) rotate(170deg);
}

@-webkit-keyframes yellow {
    50% {
        -webkit-transform: translate3d(58vw, 70vh, 0);
                transform: translate3d(58vw, 70vh, 0);
    }
    100% {
        -webkit-transform: translate3d(77vw, 88vh, 0);
                transform: translate3d(77vw, 88vh, 0);
    }
}

@keyframes yellow {
    50% {
        -webkit-transform: translate3d(58vw, 70vh, 0);
                transform: translate3d(58vw, 70vh, 0);
    }
    100% {
        -webkit-transform: translate3d(77vw, 88vh, 0);
                transform: translate3d(77vw, 88vh, 0);
    }
}
@-webkit-keyframes yellow-pseudo {
    33% {
        -webkit-transform: translate3d(1vw, 0vh, 0) rotate(340deg);
                transform: translate3d(1vw, 0vh, 0) rotate(340deg);
    }
    100% {
        -webkit-transform: translate3d(-45vw, -85vh, 0) rotate(355deg);
                transform: translate3d(-45vw, -85vh, 0) rotate(355deg);
    }
}
@keyframes yellow-pseudo {
    33% {
        -webkit-transform: translate3d(1vw, 0vh, 0) rotate(340deg);
                transform: translate3d(1vw, 0vh, 0) rotate(340deg);
    }
    100% {
        -webkit-transform: translate3d(-45vw, -85vh, 0) rotate(355deg);
                transform: translate3d(-45vw, -85vh, 0) rotate(355deg);
    }
}
.cyan {
    -webkit-animation: cyan linear 30s alternate infinite;
            animation: cyan linear 30s alternate infinite;
    border: 2px solid #78ffba;
    border-radius: 100%;
    width: 38px;
    height: 38px;
    -webkit-transform: translate3d(38vw, 10vh, 0);
            transform: translate3d(38vw, 10vh, 0);
    z-index: 6;
}

.cyan::before {
    -webkit-animation: cyan-pseudo linear 15s alternate infinite;
            animation: cyan-pseudo linear 15s alternate infinite;
    background: #78ffba;
    border: 2px solid #78ffba;
    width: 18px;
    height: 33px;
    -webkit-transform: translate3d(61vw, 4vh, 0) rotate(158deg);
            transform: translate3d(61vw, 4vh, 0) rotate(158deg);
}

.cyan::after {
    -webkit-animation: cyan-pseudo linear 20s alternate infinite;
            animation: cyan-pseudo linear 20s alternate infinite;
    border: 2px solid #78ffba;
    width: 38px;
    height: 11px;
    -webkit-transform: translate3d(2vw, 10vh, 0) rotate(294deg);
            transform: translate3d(2vw, 10vh, 0) rotate(294deg);
}

@-webkit-keyframes cyan {
    50% {
        -webkit-transform: translate3d(98vw, 6vh, 0);
                transform: translate3d(98vw, 6vh, 0);
    }
    100% {
        -webkit-transform: translate3d(69vw, 59vh, 0);
                transform: translate3d(69vw, 59vh, 0);
    }
}

@keyframes cyan {
    50% {
        -webkit-transform: translate3d(98vw, 6vh, 0);
                transform: translate3d(98vw, 6vh, 0);
    }
    100% {
        -webkit-transform: translate3d(69vw, 59vh, 0);
                transform: translate3d(69vw, 59vh, 0);
    }
}
@-webkit-keyframes cyan-pseudo {
    33% {
        -webkit-transform: translate3d(-21vw, 48vh, 0) rotate(20deg);
                transform: translate3d(-21vw, 48vh, 0) rotate(20deg);
    }
    100% {
        -webkit-transform: translate3d(-56vw, 28vh, 0) rotate(1deg);
                transform: translate3d(-56vw, 28vh, 0) rotate(1deg);
    }
}
@keyframes cyan-pseudo {
    33% {
        -webkit-transform: translate3d(-21vw, 48vh, 0) rotate(20deg);
                transform: translate3d(-21vw, 48vh, 0) rotate(20deg);
    }
    100% {
        -webkit-transform: translate3d(-56vw, 28vh, 0) rotate(1deg);
                transform: translate3d(-56vw, 28vh, 0) rotate(1deg);
    }
}
.light-green {
    -webkit-animation: light-green linear 30s alternate infinite;
            animation: light-green linear 30s alternate infinite;
    border: 2px solid #98fd85;
    border-radius: 100%;
    width: 36px;
    height: 36px;
    -webkit-transform: translate3d(20vw, 97vh, 0);
            transform: translate3d(20vw, 97vh, 0);
    z-index: 1;
}

.light-green::before {
    -webkit-animation: light-green-pseudo linear 15s alternate infinite;
            animation: light-green-pseudo linear 15s alternate infinite;
    background: #98fd85;
    border: 2px solid #98fd85;
    width: 22px;
    height: 38px;
    -webkit-transform: translate3d(26vw, -6vh, 0) rotate(234deg);
            transform: translate3d(26vw, -6vh, 0) rotate(234deg);
}

.light-green::after {
    -webkit-animation: light-green-pseudo linear 20s alternate infinite;
            animation: light-green-pseudo linear 20s alternate infinite;
    border: 2px solid #98fd85;
    width: 31px;
    height: 17px;
    -webkit-transform: translate3d(42vw, -24vh, 0) rotate(208deg);
            transform: translate3d(42vw, -24vh, 0) rotate(208deg);
}

@-webkit-keyframes light-green {
    50% {
        -webkit-transform: translate3d(85vw, 40vh, 0);
                transform: translate3d(85vw, 40vh, 0);
    }
    100% {
        -webkit-transform: translate3d(85vw, 75vh, 0);
                transform: translate3d(85vw, 75vh, 0);
    }
}

@keyframes light-green {
    50% {
        -webkit-transform: translate3d(85vw, 40vh, 0);
                transform: translate3d(85vw, 40vh, 0);
    }
    100% {
        -webkit-transform: translate3d(85vw, 75vh, 0);
                transform: translate3d(85vw, 75vh, 0);
    }
}
@-webkit-keyframes light-green-pseudo {
    33% {
        -webkit-transform: translate3d(-38vw, 25vh, 0) rotate(75deg);
                transform: translate3d(-38vw, 25vh, 0) rotate(75deg);
    }
    100% {
        -webkit-transform: translate3d(9vw, 24vh, 0) rotate(176deg);
                transform: translate3d(9vw, 24vh, 0) rotate(176deg);
    }
}
@keyframes light-green-pseudo {
    33% {
        -webkit-transform: translate3d(-38vw, 25vh, 0) rotate(75deg);
                transform: translate3d(-38vw, 25vh, 0) rotate(75deg);
    }
    100% {
        -webkit-transform: translate3d(9vw, 24vh, 0) rotate(176deg);
                transform: translate3d(9vw, 24vh, 0) rotate(176deg);
    }
}
.lime {
    -webkit-animation: lime linear 30s alternate infinite;
            animation: lime linear 30s alternate infinite;
    border: 2px solid #befb46;
    border-radius: 100%;
    width: 20px;
    height: 20px;
    -webkit-transform: translate3d(7vw, 29vh, 0);
            transform: translate3d(7vw, 29vh, 0);
    z-index: 10;
}

.lime::before {
    -webkit-animation: lime-pseudo linear 15s alternate infinite;
            animation: lime-pseudo linear 15s alternate infinite;
    background: #befb46;
    border: 2px solid #befb46;
    width: 21px;
    height: 31px;
    -webkit-transform: translate3d(-2vw, 3vh, 0) rotate(209deg);
            transform: translate3d(-2vw, 3vh, 0) rotate(209deg);
}

.lime::after {
    -webkit-animation: lime-pseudo linear 20s alternate infinite;
            animation: lime-pseudo linear 20s alternate infinite;
    border: 2px solid #befb46;
    width: 42px;
    height: 6px;
    -webkit-transform: translate3d(18vw, -25vh, 0) rotate(127deg);
            transform: translate3d(18vw, -25vh, 0) rotate(127deg);
}

@-webkit-keyframes lime {
    50% {
        -webkit-transform: translate3d(86vw, 88vh, 0);
                transform: translate3d(86vw, 88vh, 0);
    }
    100% {
        -webkit-transform: translate3d(15vw, 61vh, 0);
                transform: translate3d(15vw, 61vh, 0);
    }
}

@keyframes lime {
    50% {
        -webkit-transform: translate3d(86vw, 88vh, 0);
                transform: translate3d(86vw, 88vh, 0);
    }
    100% {
        -webkit-transform: translate3d(15vw, 61vh, 0);
                transform: translate3d(15vw, 61vh, 0);
    }
}
@-webkit-keyframes lime-pseudo {
    33% {
        -webkit-transform: translate3d(-57vw, -3vh, 0) rotate(260deg);
                transform: translate3d(-57vw, -3vh, 0) rotate(260deg);
    }
    100% {
        -webkit-transform: translate3d(-2vw, -42vh, 0) rotate(27deg);
                transform: translate3d(-2vw, -42vh, 0) rotate(27deg);
    }
}
@keyframes lime-pseudo {
    33% {
        -webkit-transform: translate3d(-57vw, -3vh, 0) rotate(260deg);
                transform: translate3d(-57vw, -3vh, 0) rotate(260deg);
    }
    100% {
        -webkit-transform: translate3d(-2vw, -42vh, 0) rotate(27deg);
                transform: translate3d(-2vw, -42vh, 0) rotate(27deg);
    }
}
.magenta {
    -webkit-animation: magenta linear 30s alternate infinite;
            animation: magenta linear 30s alternate infinite;
    border: 2px solid #6c046c;
    border-radius: 100%;
    width: 11px;
    height: 11px;
    -webkit-transform: translate3d(75vw, 20vh, 0);
            transform: translate3d(75vw, 20vh, 0);
    z-index: 7;
}

.magenta::before {
    -webkit-animation: magenta-pseudo linear 15s alternate infinite;
            animation: magenta-pseudo linear 15s alternate infinite;
    background: #6c046c;
    border: 2px solid #6c046c;
    width: 7px;
    height: 22px;
    -webkit-transform: translate3d(-27vw, 42vh, 0) rotate(360deg);
            transform: translate3d(-27vw, 42vh, 0) rotate(360deg);
}

.magenta::after {
    -webkit-animation: magenta-pseudo linear 20s alternate infinite;
            animation: magenta-pseudo linear 20s alternate infinite;
    border: 2px solid #6c046c;
    width: 8px;
    height: 43px;
    -webkit-transform: translate3d(-39vw, 60vh, 0) rotate(322deg);
            transform: translate3d(-39vw, 60vh, 0) rotate(322deg);
}

@-webkit-keyframes magenta {
    50% {
        -webkit-transform: translate3d(79vw, 24vh, 0);
                transform: translate3d(79vw, 24vh, 0);
    }
    100% {
        -webkit-transform: translate3d(36vw, 37vh, 0);
                transform: translate3d(36vw, 37vh, 0);
    }
}

@keyframes magenta {
    50% {
        -webkit-transform: translate3d(79vw, 24vh, 0);
                transform: translate3d(79vw, 24vh, 0);
    }
    100% {
        -webkit-transform: translate3d(36vw, 37vh, 0);
                transform: translate3d(36vw, 37vh, 0);
    }
}
@-webkit-keyframes magenta-pseudo {
    33% {
        -webkit-transform: translate3d(-22vw, 43vh, 0) rotate(34deg);
                transform: translate3d(-22vw, 43vh, 0) rotate(34deg);
    }
    100% {
        -webkit-transform: translate3d(31vw, 39vh, 0) rotate(242deg);
                transform: translate3d(31vw, 39vh, 0) rotate(242deg);
    }
}
@keyframes magenta-pseudo {
    33% {
        -webkit-transform: translate3d(-22vw, 43vh, 0) rotate(34deg);
                transform: translate3d(-22vw, 43vh, 0) rotate(34deg);
    }
    100% {
        -webkit-transform: translate3d(31vw, 39vh, 0) rotate(242deg);
                transform: translate3d(31vw, 39vh, 0) rotate(242deg);
    }
}
.lightish-red {
    -webkit-animation: lightish-red linear 30s alternate infinite;
            animation: lightish-red linear 30s alternate infinite;
    border: 2px solid #f04c81;
    border-radius: 100%;
    width: 6px;
    height: 6px;
    -webkit-transform: translate3d(58vw, 85vh, 0);
            transform: translate3d(58vw, 85vh, 0);
    z-index: 2;
}

.lightish-red::before {
    -webkit-animation: lightish-red-pseudo linear 15s alternate infinite;
            animation: lightish-red-pseudo linear 15s alternate infinite;
    background: #f04c81;
    border: 2px solid #f04c81;
    width: 44px;
    height: 33px;
    -webkit-transform: translate3d(35vw, -85vh, 0) rotate(322deg);
            transform: translate3d(35vw, -85vh, 0) rotate(322deg);
}

.lightish-red::after {
    -webkit-animation: lightish-red-pseudo linear 20s alternate infinite;
            animation: lightish-red-pseudo linear 20s alternate infinite;
    border: 2px solid #f04c81;
    width: 32px;
    height: 43px;
    -webkit-transform: translate3d(4vw, -5vh, 0) rotate(55deg);
            transform: translate3d(4vw, -5vh, 0) rotate(55deg);
}

@-webkit-keyframes lightish-red {
    50% {
        -webkit-transform: translate3d(1vw, 42vh, 0);
                transform: translate3d(1vw, 42vh, 0);
    }
    100% {
        -webkit-transform: translate3d(59vw, 44vh, 0);
                transform: translate3d(59vw, 44vh, 0);
    }
}

@keyframes lightish-red {
    50% {
        -webkit-transform: translate3d(1vw, 42vh, 0);
                transform: translate3d(1vw, 42vh, 0);
    }
    100% {
        -webkit-transform: translate3d(59vw, 44vh, 0);
                transform: translate3d(59vw, 44vh, 0);
    }
}
@-webkit-keyframes lightish-red-pseudo {
    33% {
        -webkit-transform: translate3d(36vw, -19vh, 0) rotate(192deg);
                transform: translate3d(36vw, -19vh, 0) rotate(192deg);
    }
    100% {
        -webkit-transform: translate3d(0vw, -35vh, 0) rotate(79deg);
                transform: translate3d(0vw, -35vh, 0) rotate(79deg);
    }
}
@keyframes lightish-red-pseudo {
    33% {
        -webkit-transform: translate3d(36vw, -19vh, 0) rotate(192deg);
                transform: translate3d(36vw, -19vh, 0) rotate(192deg);
    }
    100% {
        -webkit-transform: translate3d(0vw, -35vh, 0) rotate(79deg);
                transform: translate3d(0vw, -35vh, 0) rotate(79deg);
    }
}
.pink {
    -webkit-animation: pink linear 30s alternate infinite;
            animation: pink linear 30s alternate infinite;
    border: 2px solid #ff4293;
    border-radius: 100%;
    width: 17px;
    height: 17px;
    -webkit-transform: translate3d(57vw, 93vh, 0);
            transform: translate3d(57vw, 93vh, 0);
    z-index: 2;
}

.pink::before {
    -webkit-animation: pink-pseudo linear 15s alternate infinite;
            animation: pink-pseudo linear 15s alternate infinite;
    background: #ff4293;
    border: 2px solid #ff4293;
    width: 20px;
    height: 31px;
    -webkit-transform: translate3d(2vw, 2vh, 0) rotate(277deg);
            transform: translate3d(2vw, 2vh, 0) rotate(277deg);
}

.pink::after {
    -webkit-animation: pink-pseudo linear 20s alternate infinite;
            animation: pink-pseudo linear 20s alternate infinite;
    border: 2px solid #ff4293;
    width: 18px;
    height: 15px;
    -webkit-transform: translate3d(33vw, 5vh, 0) rotate(220deg);
            transform: translate3d(33vw, 5vh, 0) rotate(220deg);
}

@-webkit-keyframes pink {
    50% {
        -webkit-transform: translate3d(45vw, 78vh, 0);
                transform: translate3d(45vw, 78vh, 0);
    }
    100% {
        -webkit-transform: translate3d(73vw, 86vh, 0);
                transform: translate3d(73vw, 86vh, 0);
    }
}

@keyframes pink {
    50% {
        -webkit-transform: translate3d(45vw, 78vh, 0);
                transform: translate3d(45vw, 78vh, 0);
    }
    100% {
        -webkit-transform: translate3d(73vw, 86vh, 0);
                transform: translate3d(73vw, 86vh, 0);
    }
}
@-webkit-keyframes pink-pseudo {
    33% {
        -webkit-transform: translate3d(-4vw, 9vh, 0) rotate(248deg);
                transform: translate3d(-4vw, 9vh, 0) rotate(248deg);
    }
    100% {
        -webkit-transform: translate3d(13vw, -27vh, 0) rotate(226deg);
                transform: translate3d(13vw, -27vh, 0) rotate(226deg);
    }
}
@keyframes pink-pseudo {
    33% {
        -webkit-transform: translate3d(-4vw, 9vh, 0) rotate(248deg);
                transform: translate3d(-4vw, 9vh, 0) rotate(248deg);
    }
    100% {
        -webkit-transform: translate3d(13vw, -27vh, 0) rotate(226deg);
                transform: translate3d(13vw, -27vh, 0) rotate(226deg);
    }
}

.login-box {
  position: fixed;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}

.login-box form a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #03e9f4;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 4px
}

.login-box a:hover {
  background: #03e9f4;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03e9f4,
              0 0 25px #03e9f4,
              0 0 50px #03e9f4,
              0 0 100px #03e9f4;
}

.login-box a span {
  position: absolute;
  display: block;
}

.login-box a span:nth-child(1) {
  top: 0;
  left: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, #03e9f4);
  animation: btn-anim1 1s linear infinite;
}

@keyframes btn-anim1 {
  0% {
    left: -100%;
  }
  50%,100% {
    left: 100%;
  }
}

.login-box a span:nth-child(2) {
  top: -100%;
  right: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(180deg, transparent, #03e9f4);
  animation: btn-anim2 1s linear infinite;
  animation-delay: .25s
}

@keyframes btn-anim2 {
  0% {
    top: -100%;
  }
  50%,100% {
    top: 100%;
  }
}

.login-box a span:nth-child(3) {
  bottom: 0;
  right: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(270deg, transparent, #03e9f4);
  animation: btn-anim3 1s linear infinite;
  animation-delay: .5s
}

@keyframes btn-anim3 {
  0% {
    right: -100%;
  }
  50%,100% {
    right: 100%;
  }
}

.login-box a span:nth-child(4) {
  bottom: -100%;
  left: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(360deg, transparent, #03e9f4);
  animation: btn-anim4 1s linear infinite;
  animation-delay: .75s
}

@keyframes btn-anim4 {
  0% {
    bottom: -100%;
  }
  50%,100% {
    bottom: 100%;
  }
}

.box {
    width: 100px;
    height: 100px;
    background-color: blue;
    color: white;
    text-align: center;
    line-height: 100px;
    position: absolute;
    cursor: pointer;
}

.back {
    z-index: -1;
}

</style>
<div class="purple"></div>
<div class="medium-blue"></div>
<div class="light-blue"></div>
<div class="red"></div>
<div class="orange"></div>
<div class="yellow"></div>
<div class="cyan"></div>
<div class="light-green"></div>
<div class="lime"></div>
<div class="magenta"></div>
<div class="lightish-red"></div>
<div class="pink"></div>
<div style="min-width:350px;">

<?php if(count($errors) > 0):?>
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>Errors:</strong>
            <?php foreach($errors as $error):?>
               <br><?=$error?>
            <?php endforeach?>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <?php endif;?>
<div class="login-box">
  <h2>ELS Management System</h2>
  <form method="post">
    <div id="div1" class="user-box">
      <input type="email" value="<?=get_var('email')?>" name="email" placeholder="Email">
      <label>Username</label>
    </div>
    <div class="user-box">
      <input type="password" value="<?=get_var('password')?>" name="password" placeholder="Password">
      <label>Password</label>
    </div>
    <center><button class="btn btn-outline-primary">Login</button></center>
  </form>
</div>
<div id="div2" style="margin-left:30%;" class="text-bg-primary login-box">
  <p class="text-light">Attention Students and Staff! To access this dashboard, kindly register for a new account if you haven't done so already. Registration is a breeze and opens up a range of resources tailored to enhance your school experience. Join us today to unlock a world of educational opportunities!</p>
  <center><a style="font-size: 15px;" class="btn btn-outline-success" href="<?=ROOT?>/signup"> Create an account.
            </a></center>
            </div>


        </div>


</div>

</body>
</html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="{{ setting('meta_description') }}">
    <meta name="keywords" content="{{ setting('meta_keyword') }}">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="{{ setting('author') }}">
    <meta name="baseurl" content="{{ url('/') }}">
    @stack('meta')
    <link rel="icon" type="image/x-icon" href="{{ @showImage(setting('favicon'), 'favicon.png') }}">
    <meta name="csrf_token" content="{{ csrf_token() }}">
    <title> s @yield('title') | {{ setting('application_name') }} </title>
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;500;600;700;800;900;1000&display=swap" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="{{ url('frontend/assets/css/bootstrap-5.3.0.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('frontend/assets/css/fonts-icon.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('frontend/assets/css/plugin.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('frontend/assets/css/CustomStyle.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('frontend/assets/css/main-style.css') }}">
    @if(session('locale') == 'en')
    @elseif(session('locale') == 'ar')
        <link rel="stylesheet" type="text/css" href="{{ url('frontend/assets/css/Style_RTL.css') }}">
    @else
    @endif
    <link rel="stylesheet" type="text/css" href="{{ url('frontend\essentials\main-bg-style.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('frontend/css/custom.css') }}">
    @yield('css')
</head>

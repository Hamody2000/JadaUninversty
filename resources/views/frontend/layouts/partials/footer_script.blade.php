
<script src="{{ url('frontend/assets/js/jquery-3.7.0.min.js') }}"></script>
<script src="{{ url('frontend/assets/js/popper.min.js') }}"></script>
<script src="{{ url('frontend/assets/js/bootstrap-5.3.0.min.js') }}"></script>
<script src="{{ url('frontend/assets/js/plugin.js') }}"></script>
<script src="{{ url('frontend/assets/js/main.js') }}"></script>
@include('backend.partials.alert-message')
<script src="{{ url('frontend/js/main.js') }}"></script>
<script type="module" src="{{url('frontend/js/__authentication.js')}}"></script>
@yield('scripts')
</body>

</html>

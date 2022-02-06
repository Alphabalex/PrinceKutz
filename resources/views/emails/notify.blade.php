<!DOCTYPE html>
<html>
<head>
    <title>PRINCE KUTZ HAIR STUDIO</title>
</head>
<body>
    <h3>Hi {{ $details['salon'] }}, A new appointment with booking id {{ $details['booking_id'] }} has been scheduled.</h3>
    <h4>Services:
        @foreach($details['services'] as $service)
        <li><strong>{{$service->name}}</strong></li>
        @endforeach
    </h4>
    <h4>Duration: {{ $details['duration'] }} Minutes </h4>
    <h4>Client Name: {{ $details['client'] }}</h4>
    <h4>Client Email: {{ $details['email'] }}</h4>
    <h4>Client Phone: {{ $details['phone'] }}</h4>
    <h4>Appointment Date: {{ $details['date'] }}</h4>
    <h4>Appointment Time: {{ $details['start'] }} - {{ $details['end'] }}</h4>
    <p>Thank you.</p>
</body>
</html>
<!DOCTYPE html>
<html>
<head>
    <title>PRINCE KUTZ HAIR STUDIO</title>
</head>
<body>
    <h3>Dear {{ $details['client'] }}, Your appointment has been scheduled successfully at {{ $details['salon'] }}.</h3>
    <h4>Date: {{ $details['date'] }}</h4>
    <h4>Time: {{ $details['start'] }} - {{ $details['end'] }}</h4>
    <h4>Location:  {{ $details['address'] }}</h4>
    <h4>Your booking id is {{ $details['booking_id'] }}</h4>
    <p>Thank you.</p>
</body>
</html>
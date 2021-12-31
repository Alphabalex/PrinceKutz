<div class="grid-sizer"></div>
@foreach ($galleries as $gallery)
<div class="thumbnail publications">
    <img src="{{asset('storage/images/gallery/'.$gallery->image)}}" alt="gallery">
    <div class="rollover rollover5">
    <div class="vcenter">
        <div class="title-project">Passion is Key</div>
        <ul class="tags-project">
        <li> @ Prince Kutz</li>
        </ul>
        <a href="/booking" class="btn btn-default">Book Us</a>
    </div>
    </div>
</div>
@endforeach

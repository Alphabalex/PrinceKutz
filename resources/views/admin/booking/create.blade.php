<div class="container-fluid sidebar_open @if($errors->any()) show_sidebar_create @endif" id="add_appointment_sidebar">
    <div class="row">
        <div class="col">
            <div class="card py-3 border-0">
                <!-- Card header -->
                <div class="border_bottom_pink pb-3 pt-2 mb-4">
                    <span class="h3">{{__('Add Appointment')}}</span>
                    <button type="button" class="add_appointment close">&times;</button>
                </div>
                <form class="form-horizontal" id="create_appointment_form" method="post" enctype="multipart/form-data" action="{{url('/admin/booking/create')}}">
                    @csrf
                        <?php
                            $id = rand(100000,9999999);
                        ?>
                        {{-- Booking ID --}}
                        <div class="form-group">
                            <label class="form-control-label" for="booking_id">{{__('Booking id')}}</label>
                            <input type="text" name="booking_id" value="#{{$id}}" id="booking_id" class="form-control" placeholder="Booking id" readonly>
                        </div>
                        {{-- Name --}}
                        <div class="form-group">
                            <label class="form-control-label" for="name">{{__('Name')}}</label>
                            <input type="text" name="name"  id="name" class="form-control" placeholder="Name">
                            <div class="invalid-div"><span class="name"></span></div>
                        </div>
                        {{-- Email --}}
                        <div class="form-group">
                            <label class="form-control-label" for="email">{{__('Email')}}</label>
                            <input type="email" name="email"  id="email" class="form-control" placeholder="Email">
                            <div class="invalid-div"><span class="email"></span></div>
                        </div>
                        {{-- Phone --}}
                        <div class="form-group">
                            <label class="form-control-label" for="phone">{{__('Phone')}}</label>
                            <input type="phone" name="phone"  id="phone" class="form-control" placeholder="Phone">
                            <div class="invalid-div"><span class="phone"></span></div>
                        </div>
                        {{-- Address --}}
                        <div class="form-group">
                            <label class="form-control-label" for="address">{{__('Address')}}</label>
                            <textarea name="address" id="address" cols="30" rows="10" class="form-control" placeholder="address"></textarea>
                            <div class="invalid-div"><span class="address"></span></div>
                        </div>
                        {{-- Services --}}
                        <div class="form-group">
                            <label class="form-control-label">{{__('Services')}}</label>
                            <select class="form-control select2 service_class" multiple="multiple" name="service_id[]" id="select2" data-placeholder='{{ __("-- Select Service --")}}' placeholder='{{ __("-- Select Service --")}}'>
                                @foreach ($services as $service)
                                    <option value={{$service->service_id}}>{{$service->name}}</option>
                                @endforeach
                            </select>
                            <div class="invalid-div"><span class="service_id"></span></div>
                        </div>
                        {{-- Date of appointment--}}
                        <div class="form-group">
                            <label class="form-control-label" for="date">{{__('Date')}}</label>
                            <input type="text" name="date"  id="date" class="form-control select_date" placeholder="{{__('-- Select Date --')}}">
                            <div class="invalid-div"><span class="date"></span></div>
                        </div>
                        {{-- Time of appointment--}}
                        <div class="form-group">
                            <label class="form-control-label" for="start_time">{{__('Time')}}</label>
                            <select class="form-control select2 start_time" name="start_time" id="start_time">
                                <option disabled selected> {{__('-- Select Time --')}} </option>
                            </select>
                            <div class="invalid-div"><span class="start_time"></span></div>
                        </div>
                        {{-- service price --}}
                        <div class="form-group">
                            <label class="form-control-label" for="price">{{__('Price')}}</label>
                            <input type="text" name="price" id="price" class="form-control" placeholder="{{__('Price')}}" readonly>
                            <div class="invalid-div"><span class="price"></span></div>
                        </div>

                        {{-- staffs --}}
                        <div class="form-group">
                            <label class="form-control-label">{{__('Employee')}}</label>
                            <select class="form-control select2 emp_id" name="emp_id" id="emp_id">
                                <option disabled selected> {{__('-- Select Employee --')}} </option>
                            </select>
                            <div class="invalid-div"><span class="emp_id"></span></div>
                        </div>
                        {{-- end --}}

                        <div class="text-center">
                            <button type="button" onclick="all_create('create_appointment_form','booking')" id="create_btn" class="btn btn-primary rtl-float-none mt-4 mb-5">{{ __('Book Appointment') }}</button>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

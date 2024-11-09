@extends('layouts.UserPanelLayouts.usermain')
@push('title')
    <title>Refer & Earn | DBA Consultancy</title>
@endpush
@section('content')
    <div class="p-4">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-4 p-0">
                    <div>
                        <img src="{{ asset('assets/images/Refer.png') }}" alt="Refer Image" class="img-fluid rounded-3">
                    </div>
                </div>
            </div>
        </div>
        <div class="container my-3">
            <div class="row justify-content-center">
                <div class="col-lg-4 p-0">
                    <div class="row justify-content-center shadow-lg py-3 rounded-4 bg-white">
                        <div class="">
                            <h5 class="text-success">Referral Program Conditions:</h5>
                            <p>
                                <b>Direct referral:</b> 10% bonus up to ₹50,000 in business. <br />
                                <b>Annual business requirement for bonus eligibility.</b>
                            <ul class="text-dark fs-6">
                                <li> <b> Beyond ₹50,000 in business:</b> 15% referral bonus.</li>
                                <li><b> Second-level referrals:</b> 5% bonus.</li>
                            </ul>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container my-2">
            <div class="row justify-content-center mb-4">
                <div class="col-lg-4 p-0">
                    <div class="row">
                        <div class="col-xs-12 d-grid justify-items-center">
                            <div class="p-2">
                                <div class="mb-3 text-center fs-5">
                                    Your Referral code is
                                </div>

                                <div id="p1" class="mb-3 text-center text-danger shadow-lg bg-white referCode">
                                    {{ Auth::guard('customer')->user()->userid ?? 'Guest' }}
                                </div>
                                <div class="d-flex justify-content-around">
                                    <button onclick="copyToClipboard()" class="btn btn-outline-primary fs-4">
                                        Copy Code
                                    </button>
                                    <button
                                        onclick="shareOnWhatsapp('{{ Auth::guard('customer')->user()->userid ?? 'Guest' }}')"
                                        class="btn btn-success fs-4">
                                        <i class="bx bxl-whatsapp"></i> Share Code
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <script>
        function copyToClipboard() {
            var copyText = document.getElementById("p1").textContent;
            navigator.clipboard.writeText(copyText);
            alert("Copied the code: " + copyText);
        }

        function shareOnWhatsapp(referCode) {
            const message = encodeURIComponent(
                `🎉👉 Use my referral code *${referCode}* to sign up and get a Bonus🏆`
            );
            const whatsappLink = `https://api.whatsapp.com/send/?text=${message}`;
            window.open(whatsappLink, '_blank');
        }
    </script>
@endsection

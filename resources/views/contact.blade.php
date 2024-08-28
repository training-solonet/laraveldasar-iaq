<x-layout>
    <x-slot name="title">{{ $title }}</x-slot>

    <div class="py-20">
        <div class="max-w-6xl mx-auto px-6 lg:px-8">
            <div class="text-center">
                <h1 class="text-5xl font-extrabold text-gray-900 mb-8">Contact Us</h1>
            </div>

            <div class="flex flex-col md:flex-row justify-between items-center bg-gradient-to-r from-blue-500 to-indigo-600 text-white shadow-xl rounded-xl p-10 space-y-8 md:space-y-0 md:space-x-8">

                <div class="w-full md:w-1/2">
                    <h2 class="text-3xl font-semibold mb-4">Contact Information</h2>
                    <div class="space-y-4">
                        <div>
                            <h3 class="text-xl font-semibold">Phone</h3>
                            <p class="text-lg">+123 456 7890</p>
                        </div>
                        <div>
                            <h3 class="text-xl font-semibold">Email</h3>
                            <p class="text-lg">contact@example.com</p>
                        </div>
                    </div>
                </div>

                <div class="w-full md:w-1/2 text-center">
                    <h2 class="text-3xl font-semibold mb-4">Follow Us</h2>
                    <div class="flex justify-center space-x-6 mt-6">
                        <a href="https://www.instagram.com/xyurainhere/" class="hover:text-gray-300 transition">
                            <svg class="w-10 h-10" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path d="M7.75 2h8.5C19.44 2 22 4.56 22 7.75v8.5C22 19.44 19.44 22 16.25 22h-8.5C4.56 22 2 19.44 2 16.25v-8.5C2 4.56 4.56 2 7.75 2zm5.25 11c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm6-8.25h-1.5a.75.75 0 000 1.5H19a.75.75 0 000-1.5zm-2.25 9a3.75 3.75 0 11-7.5 0 3.75 3.75 0 017.5 0z"/>
                            </svg>
                        </a>
                        <a href="https://www.facebook.com/KamisatoXyuraa?mibextid=ZbWKwL" class="hover:text-gray-300 transition">
                            <svg class="w-10 h-10" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path d="M9 8H7v4h2v12h5V12h3.5L17 8h-3V6c0-.85.68-1 1-1h2V2h-2.5C12.42 2 10 3.5 10 6v2z"/>
                            </svg>
                        </a>
                        <a href="https://x.com/Xyurauyy?t=kHOsBthzqyifhFrnUQDc5g&s=09" class="hover:text-gray-300 transition">
                            <svg class="w-10 h-10" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path d="M23 3.1a10 10 0 01-2.89.79 5.03 5.03 0 002.21-2.79 9.93 9.93 0 01-3.16 1.21A5.01 5.01 0 0011.76 8a14.3 14.3 0 01-10.42-5.3A5.02 5.02 0 004 10.5a4.93 4.93 0 01-2.26-.62v.06a5.01 5.01 0 004.02 4.9 5 5 0 01-2.26.09 5.02 5.02 0 004.67 3.5 10.08 10.08 0 01-6.29 2.17A10.45 10.45 0 010 21a14.28 14.28 0 007.77 2.28C17.56 23.28 22 14.7 22 7.6v-.3A10.15 10.15 0 0024 4.56c-.93.42-1.93.7-2.98.82z"/>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-layout>
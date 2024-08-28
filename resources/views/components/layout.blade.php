<!DOCTYPE html>
<html lang="en" class="h-full bg-gray-100">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @vite(['resources/css/app.css','resources/js/app.js'])
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
    <title>{{ $title }}</title>
</head>
<body class="h-full">
    <div class="min-h-full flex flex-col">
        <x-navbar></x-navbar>
        <x-header>{{ $title }}</x-header>
        <main class="flex-grow">
            <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
                {{ $slot }}
            </div>
        </main>
        <footer class="bg-gray-800 text-white py-8 w-full">
            <div class="container mx-auto text-center">
                <p class="text-sm">© 2024 Ifkar AQ. All rights reserved.</p>
            </div>
        </footer>
    </div>
</body>
</html>

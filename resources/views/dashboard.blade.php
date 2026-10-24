<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <!-- Use FontAwesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Google Fonts: Inter -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <!-- Pure Custom CSS, No Vite/Tailwind -->
    <link rel="stylesheet" href="{{ asset('css/dashboard.css') }}">
</head>
<body>

    <div class="dashboard-layout">
        
        <!-- Sidebar -->
        <aside class="sidebar" id="sidebar">
            <div class="sidebar-header">
                <div class="sidebar-logo">
                    <i class="fas fa-newspaper" style="margin-right: 8px;"></i> NewsPortal
                </div>
            </div>
            
            <nav class="sidebar-nav">
                <div class="nav-item">
                    <a href="#" class="nav-link active">
                        <i class="fas fa-home"></i> Beranda
                    </a>
                </div>
                <div class="nav-item">
                    <a href="{{ url('/') }}" class="nav-link">
                        <i class="fas fa-globe"></i> Lihat Website
                    </a>
                </div>
                <div class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-user"></i> Profil Saya
                    </a>
                </div>
                <div class="nav-item" style="margin-top: 2rem;">
                    <a href="#" class="nav-link" style="color: #ef4444;">
                        <i class="fas fa-sign-out-alt"></i> Keluar
                    </a>
                </div>
            </nav>
        </aside>

        <!-- Main Content -->
        <main class="main-content">
            
            <!-- Topbar -->
            <header class="topbar">
                <div style="display: flex; align-items: center; gap: 1rem;">
                    <button class="menu-toggle" onclick="document.getElementById('sidebar').classList.toggle('show')">
                        <i class="fas fa-bars"></i>
                    </button>
                    <h1 class="topbar-title">Dashboard Overview</h1>
                </div>
                
                <div class="user-profile">
                    <div style="text-align: right;">
                        <div style="font-size: 0.875rem; font-weight: 600;">User Pengguna</div>
                        <div style="font-size: 0.75rem; color: var(--text-muted);">user@example.com</div>
                    </div>
                    <div class="avatar">
                        U
                    </div>
                </div>
            </header>

            <!-- Content Area -->
            <div class="content-area">
                
                <!-- Stats Grid -->
                <div class="stats-grid">
                    <div class="stat-card">
                        <div class="stat-info">
                            <span class="stat-label">Total Berita</span>
                            <span class="stat-value">{{ $stats['total_news'] ?? 0 }}</span>
                        </div>
                        <div class="stat-icon">
                            <i class="fas fa-file-alt"></i>
                        </div>
                    </div>
                    
                    <div class="stat-card">
                        <div class="stat-info">
                            <span class="stat-label">Berita Publish</span>
                            <span class="stat-value">{{ $stats['published_news'] ?? 0 }}</span>
                        </div>
                        <div class="stat-icon" style="background-color: #d1fae5; color: #059669;">
                            <i class="fas fa-check-circle"></i>
                        </div>
                    </div>
                    
                    <div class="stat-card">
                        <div class="stat-info">
                            <span class="stat-label">Total Kategori</span>
                            <span class="stat-value">{{ $stats['total_categories'] ?? 0 }}</span>
                        </div>
                        <div class="stat-icon" style="background-color: #e0e7ff; color: #4f46e5;">
                            <i class="fas fa-tags"></i>
                        </div>
                    </div>
                </div>

                <!-- Recent Data Table -->
                <div class="data-section">
                    <div class="section-header">
                        <h2 class="section-title">Berita Terbaru</h2>
                        <a href="{{ url('/') }}" class="btn btn-primary">Baca Berita</a>
                    </div>
                    
                    <div style="overflow-x: auto;">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Judul Berita</th>
                                    <th>Kategori</th>
                                    <th>Status</th>
                                    <th>Tanggal</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse($recentNews as $news)
                                <tr>
                                    <td style="font-weight: 500;">{{ $news->title }}</td>
                                    <td>{{ $news->category->name ?? '-' }}</td>
                                    <td>
                                        @if($news->status == 'publish')
                                            <span class="status-badge status-publish">Publish</span>
                                        @else
                                            <span class="status-badge status-draft">Draft</span>
                                        @endif
                                    </td>
                                    <td>{{ $news->created_at->format('d M Y') }}</td>
                                </tr>
                                @empty
                                <tr>
                                    <td colspan="4" style="text-align: center; color: var(--text-muted); padding: 2rem;">Belum ada berita.</td>
                                </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </main>
    </div>

    <!-- Simple JS for mobile menu toggle -->
    <script>
        // A simple toggle style for mobile since we are not using Tailwind/Alpine
        document.querySelector('.menu-toggle').addEventListener('click', function() {
            const sidebar = document.getElementById('sidebar');
            if(sidebar.style.transform === 'translateX(0%)') {
                sidebar.style.transform = 'translateX(-100%)';
            } else {
                sidebar.style.transform = 'translateX(0%)';
            }
        });
    </script>
</body>
</html>

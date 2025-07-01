{{-- <nav id="navbar" class="navbar navbar-expand-lg bg-light shadow-lg">
    <div class="container">
        <a class="navbar-brand" href="index.html">
            <img src="{{ asset('assets/images//logobabel.png') }}" class="logo img-fluid" alt="Portal PPID"  >
            <span>
                PORTAL PPID
                <small>Pejabat Pengelola Informasi dan Dokumentasi</small>
            </span>
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link click-scroll" href="#top">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link click-scroll dropdown-toggle" href="#" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Profil</a>

                    <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                        <li><a class="dropdown-item" href="#">Pemerintahan Provinsi Kepulauan Bangka Belitung</a></li>

                        <li><a class="dropdown-item" href="#">PPID Bangka Belitung</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link click-scroll dropdown-toggle" href="#" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Informasi Publik</a>

                    <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                        <li><a class="dropdown-item" href="#">Daftar Informasi Publik</a></li>
                        <li><a class="dropdown-item" href="#">Daftar Informasi Publik Online</a></li>
                        <li><a class="dropdown-item" href="#">Informasi Berkala</a></li>
                        <li><a class="dropdown-item" href="#">Informasi Serta Merta</a></li>
                        <li><a class="dropdown-item" href="#">Informasi Setiap Saat</a></li>
                        
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link click-scroll dropdown-toggle" href="#" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Standar Layanan</a>

                    <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                        <li><a class="dropdown-item" href="#">Prosedur Pelayanan Informasi Publik</a></li>

                        <li><a class="dropdown-item" href="#">Prosedur Pengajuan Keberatan dan Proses Penyelesaian Sengketa Informasi</a></li>
                        <li><a class="dropdown-item" href="#">Prosedur Permohonan Penyelesaian Sengketa Informasi</a></li>
                        <li><a class="dropdown-item" href="#">SOP PPID</a></li>
                        <li><a class="dropdown-item" href="#">Maklumat Informasi</a></li>
                        <li><a class="dropdown-item" href="#">Waktu dan Biaya Layanan Informasi </a></li>
                        <li><a class="dropdown-item" href="#">Kanal Layanan Informasi </a></li>
                        
                    </ul>
                </li>
                

                <li class="nav-item">
                    <a class="nav-link click-scroll" href="#section_3">Berita</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link click-scroll dropdown-toggle" href="#" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Laporan</a>

                    <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink2">
                         <li class="dropdown-item">
                            <a class="dropdown-item dropdown-toggle" href="#" >
                                Pemprov Bangka Belitung
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dropdownSubSubMenu1">
                                <li><a class="dropdown-item" href="#">Sub-Sub Item 1</a></li>
                                <li><a class="dropdown-item" href="#">Sub-Sub Item 2</a></li>
                            </ul>
                        </li>

                        <li><a class="dropdown-item" href="#">PPID </a></li>
                    </ul>
                </li>
               

                <li class="nav-item">
                    <a class="nav-link click-scroll" href="#section_6">Kontak Kami</a>
                </li>

                
            </ul>
        </div>
    </div>
</nav> --}}
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
   <a class="navbar-brand" href="index.html">
            <img src="{{ asset('assets/images//logobabel.png') }}" class="logo img-fluid" alt="Portal PPID"  >
            <span>
                PORTAL PPID
                <small>Pejabat Pengelola Informasi dan Dokumentasi</small>
            </span>
    </a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="{{ url('/') }}">Home</a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link click-scroll dropdown-toggle" href="#" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Profil</a>

            <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
               <li class="dropdown-submenu">
                <a class="dropdown-item dropdown-toggle" href="#">Pemerintahan Provinsi Kepulauan Bangka Belitung  </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="{{ url('detail-page/20250701124707-visi-misi-prov-bangka-belitung') }}">Visi Misi</a></li>
                        <li><a class="dropdown-item" href="{{ url('detail-page/20250701124801-daftar-pejabat-struktural') }}">Daftar Pejabat Struktural</a></li>
                        <li><a class="dropdown-item" href="{{ url('detail-page/20250701125354-organisasi-perangkat-daerah') }}">Organisasi Perangkat Daerah</a></li>
                        <li><a class="dropdown-item" href="{{ url('detail-page/20250701125443-profil-pimpinan-daerah') }}">Profil Pimpinan Daerah</a></li>
                        <li><a class="dropdown-item" href="{{ url('detail-page/20250701125455-satuan-dan-unit-kerja') }}">Satuan dan Unit Kerja</a></li>
                        <li><a class="dropdown-item" href="{{ url('detail-page/20250701125508-struktur-organisasi') }}">Struktur Organisasi</a></li>
                        <li><a class="dropdown-item" href="{{ url('detail-page/20250701125517-tugas-dan-fungsi') }}">Tugas dan Fungsi</a></li>
                        <li><a class="dropdown-item" href="{{ url('detail-page/20250701125540-agenda-kerja-pimpinan') }}">Agenda Kerja Pimpinan</a></li>
    
                    </ul>
                </li>
                <li class="dropdown-submenu">
                <a class="dropdown-item dropdown-toggle" href="#">PPID Bangka Belitung</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="{{ url('detail-page/20250701125621-dasar-hukum-ppid') }}">Dasar Hukum PPID</a></li>
                        <li><a class="dropdown-item" href="{{ url('detail-page/20250701125629-profil-ppid') }}">Profil PPID</a></li>
                        <li><a class="dropdown-item" href="{{ url('detail-page/20250701125708-struktur-organisasi-ppid') }}">Struktur Organisasi PPID</a></li>
                        <li><a class="dropdown-item" href="{{ url('detail-page/20250701125732-tugas-dan-fungsi-ppid') }}">Tugas dan Fungsi PPID</a></li>
                        <li><a class="dropdown-item" href="{{ url('detail-page/20250701125753-visi-dan-misi-ppid') }}">Visi dan Misi PPID</a></li>
                        
    
                    </ul>
                </li>

               
            </ul>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Informasi Publik</a>

            <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701125902-daftar-informasi-publik') }}">Daftar Informasi Publik</a></li>
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701125958-daftar-informasi-publik-online') }}">Daftar Informasi Publik Online</a></li>
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701010033-informasi-berkala') }}">Informasi Berkala</a></li>
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701010058-informasi-serta-merta') }}">Informasi Serta Merta</a></li>
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701010114-informasi-setiap-saat') }}">Informasi Setiap Saat</a></li>
                
            </ul>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Standar Layanan</a>

            <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701010219-prosedur-pelayanan-informasi-publik') }}">Prosedur Pelayanan Informasi Publik</a></li>

                <li><a class="dropdown-item" href="{{ url('detail-page/20250701010255-prosedur-pengajuan-keberatan-dan-proses-penyelesaian-sengketa-informasi') }}">Prosedur Pengajuan Keberatan dan Proses Penyelesaian Sengketa Informasi</a></li>
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701010307-prosedur-permohonan-penyelesaian-sengketa-informasi') }}">Prosedur Permohonan Penyelesaian Sengketa Informasi</a></li>
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701010428-sop-ppid') }}">SOP PPID</a></li>
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701010442-maklumat-informasi') }}">Maklumat Informasi</a></li>
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701010452-waktu-dan-biaya-layanan-informasi') }}">Waktu dan Biaya Layanan Informasi </a></li>
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701010500-kanal-layanan-informasi') }}">Kanal Layanan Informasi </a></li>
                
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link click-scroll" href="#section_3">Berita</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Laporan
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
             
            <li class="dropdown-submenu">
              <a class="dropdown-item dropdown-toggle" href="#">Pemprov Bangka Belitung  </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701010531-laporan-keuangan-pemerintah-daerah-lkpd') }}">Laporan Keuangan Pemerintah Daerah (LKPD)</a></li>
                 
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701010538-laporan-penyelenggaraan-pemerintah-daerah-lppd') }}">Laporan Penyelenggara Pemerintah Daerah (LPPD)</a></li>
              </ul>
            </li>
          
            <li class="dropdown-submenu">
              <a class="dropdown-item dropdown-toggle" href="#">PPID  </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701010546-statistik-layanan-informasi-publik') }}">Statistik Layanan Informasi Publik</a></li>
                <li><a class="dropdown-item" href="{{ url('detail-page/20250701010554-laporan-ppid') }}">Laporan PPID</a></li>
              </ul>
            </li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Kontak Kami</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

  	<nav class="navbar navbar-expand-lg navbar-dark primary_background">
  <div class="container">
    <a class="navbar-brand" href="index.jsp">
      <i class="fa fa-hashtag"></i> CodeVerse
    </a>
    
    <!-- Toggler for mobile view -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Navbar links -->
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav me-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#"><i class="fa fa-bell"></i> LearnCode</a>
        </li>

        <!-- Dropdown Menu -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
            <i class="fa fa-check-square"></i> Categories
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#"><i class="fa fa-code"></i> Programming Languages</a></li>
            <li><a class="dropdown-item" href="#"><i class="fa fa-project-diagram"></i> Project Implementation</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#"><i class="fa fa-database"></i> Data Structures</a></li>
          </ul>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="#"><i class="fa fa-user"></i> Contact</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login_page.jsp"><i class="fa fa-user-circle fa-spin"></i> Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="register_page.jsp"><i class="fa fa-user-plus fa-spin"></i> Signup</a>
        </li>
      </ul>

      <!-- Search Bar -->
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-light" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

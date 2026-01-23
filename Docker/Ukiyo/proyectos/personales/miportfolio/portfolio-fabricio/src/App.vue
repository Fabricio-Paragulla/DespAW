<script setup>
import NavBar from './components/NavBar.vue'
import Hero from './components/Hero.vue'
import Projects from './components/Projects.vue'
</script>

<template>
  <div class="min-h-screen bg-slate-900 text-slate-200 selection:bg-cyan-500 selection:text-white">
    <NavBar />

    <main class="container mx-auto px-4 sm:px-6 lg:px-8">
      <Hero id="home" />

      <Projects id="proyectos" />
    </main>

    <footer class="text-center py-8 text-slate-500 text-sm border-t border-slate-800 mt-12">
      <p>&copy; 2026 Fabricio Paragulla. Desplegado con Kubernetes.</p>
    </footer>
  </div>
</template>
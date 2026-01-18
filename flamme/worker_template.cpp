// FLAMME Worker Template
// Compiled by Agni 🔥, Killed by Shiva ☠

#include <iostream>
#include <string>
#include <csignal>
#include <unistd.h>
#include <fstream>
#include <ctime>

volatile sig_atomic_t running = 1;
std::string worker_name;
std::string log_path = "/var/log/atlas/flamme.log";

void log_msg(const std::string& msg) {
    std::ofstream log(log_path, std::ios::app);
    time_t now = time(0);
    char* dt = ctime(&now);
    dt[strlen(dt)-1] = '\0';
    log << "[" << dt << "] " << worker_name << ": " << msg << std::endl;
}

void shiva_handler(int sig) {
    log_msg("☠ Shiva struck - dying gracefully");
    running = 0;
}

void setup_shiva() {
    signal(SIGTERM, shiva_handler);
    signal(SIGINT, shiva_handler);
    signal(SIGUSR1, shiva_handler); // Shiva's special signal
}

// === WORKER CODE BELOW ===
// {{WORKER_CODE}}
// === WORKER CODE ABOVE ===

int main(int argc, char* argv[]) {
    worker_name = argc > 1 ? argv[1] : "unnamed";

    setup_shiva();
    log_msg("🔥 Ignited by Flamme");

    // Write PID for Shiva
    std::string pid_file = "/var/run/atlas/flamme/" + worker_name + ".pid";
    std::ofstream pf(pid_file);
    pf << getpid();
    pf.close();

    // Run worker loop
    while (running) {
        worker_loop();
        usleep(100000); // 100ms
    }

    log_msg("Extinguished");
    unlink(pid_file.c_str());
    return 0;
}

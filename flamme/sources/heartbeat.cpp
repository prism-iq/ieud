// Heartbeat Worker - System pulse
#include <fstream>

void worker_loop() {
    // Just log that we're alive
    static int count = 0;
    if (++count % 100 == 0) { // Every 10 seconds
        log_msg("💓 alive");
    }
}

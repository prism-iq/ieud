// Guardian Worker - Watches for threats
#include <dirent.h>
#include <sys/stat.h>

void worker_loop() {
    // Check /tmp for suspicious files
    DIR* dir = opendir("/tmp");
    if (dir) {
        struct dirent* entry;
        while ((entry = readdir(dir)) != NULL) {
            std::string name = entry->d_name;
            // Flag hidden executables
            if (name[0] == '.' && name.length() > 1) {
                std::string path = "/tmp/" + name;
                struct stat st;
                if (stat(path.c_str(), &st) == 0 && (st.st_mode & S_IXUSR)) {
                    log_msg("⚠ Suspicious: " + path);
                }
            }
        }
        closedir(dir);
    }
}

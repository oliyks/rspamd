#ifndef RSPAMD_FUZZY_STORAGE_H
#define RSPAMD_FUZZY_STORAGE_H

#include "config.h"
#include "main.h"
#include "fuzzy.h"

/* Commands for fuzzy storage */
#define FUZZY_CHECK 0
#define FUZZY_WRITE 1
#define FUZZY_DEL 2

struct fuzzy_cmd {
	u_char cmd;
	uint32_t blocksize;
	u_char hash[FUZZY_HASHLEN];
};

struct fuzzy_session {
	struct rspamd_worker *worker;
	struct fuzzy_cmd cmd;
	int fd;
	u_char *pos;
	int salen;
	struct sockaddr sa;
};

void start_fuzzy_storage (struct rspamd_worker *worker);

#endif

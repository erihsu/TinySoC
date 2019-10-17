//
// Created by song on 17-4-12.
//

#ifndef APP_STRING_H
#define APP_STRING_H
#ifdef __cplusplus
extern "C" {
#endif

#include "stdint.h"
#ifdef __cplusplus
}
#endif

uint16_t strlen(uint8_t *s);

uint8_t strcmp(uint8_t *s, uint8_t *s1);

int8_t strsub(uint8_t *s, uint8_t *s2);

void strmap(uint8_t *s, uint8_t c, uint16_t len);

uint16_t str2int(uint8_t *s);

void int2str(uint32_t val, uint8_t *s);

#endif //APP_STRING_H

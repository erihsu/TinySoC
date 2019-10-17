//
// Created by song on 17-4-12.
//

#include "string.h"

uint16_t strlen(uint8_t *s) {
    uint16_t len = 0;
    while (*(s + len) != 0) {
        len++;
    }
    return len;
}

uint8_t strcmp(uint8_t *s, uint8_t *s1) {
    if (strlen(s) != strlen(s1)) {
        return 0;
    }
    if (strsub(s, s1) == 0) {
        return 1;
    }
    return 0;
}

int8_t strsub(uint8_t *s, uint8_t *s2) {
    uint16_t len = (uint16_t) strlen(s);
    uint16_t len2 = (uint16_t) strlen(s2);
    if (len == 0 && len2 == 0) {
        return 0;
    }
    if (len == 0 || len2 == 0) {
        return -1;
    }
    if (len > len2) {
        return -1;
    };

    for (uint8_t i = 0; i <= (len2 - len); ++i) {
        if (s2[i] == s[0]) {
            uint8_t n = 0;
            for (uint8_t j = 0; j < len; ++j) {
                if (s2[i + j] != s[j]) {
                    break;
                }
                n++;
            }
            if (n == len) {
                return i;
            }
        }
    }
    return -1;
}

void strmap(uint8_t *s, uint8_t c, uint16_t len) {
    for (uint16_t i = 0; i < len; ++i) {
        s[i] = c;
    }
}

uint16_t str2int(uint8_t *s) {

    uint16_t len = strlen(s);
    uint16_t val = 0;
    for (uint16_t i = 0; i < len; ++i) {
        val += (uint8_t) (s[i] - '0');
        val *= 10;
    }
    return (uint16_t) (val / 10);
}

void int2str(uint32_t val, uint8_t *s) {
    strmap(s, 0, strlen(s));
    uint32_t tmp = val;
    uint8_t num = 0;
    if (tmp == 0) {
        num = 1;
    }
    while (tmp) {
        num++;
        tmp /= 10;
    }

    tmp = val;
    uint32_t tmp1 = 1;
    for (int k = 0; k < num - 1; ++k) {
        tmp1 *= 10;
    }

    for (int j = 0; j < num; ++j) {
        uint8_t a = (uint8_t) (tmp / tmp1);
//        sputc(a + '0');
        s[j] = (uint8_t) (a + '0');
        tmp = tmp % tmp1;
        tmp1 /= 10;
    }
    s[num] = 0;

}

package gov.nist.core;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import java.text.ParseException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class StringTokenizer {
    public final String buffer;
    public final int bufferLen;
    public int ptr;
    public int savedPtr;

    public StringTokenizer() {
    }

    public static boolean isAlpha(char c) {
        if (c <= 127) {
            if ((c < 'a' || c > 'z') && (c < 'A' || c > 'Z')) {
                return false;
            }
            return true;
        }
        if (!Character.isLowerCase(c) && !Character.isUpperCase(c)) {
            return false;
        }
        return true;
    }

    public static boolean isAlphaDigit(char c) {
        if (c <= 127) {
            if ((c < 'a' || c > 'z') && ((c < 'A' || c > 'Z') && (c > '9' || c < '0'))) {
                return false;
            }
            return true;
        }
        if (!Character.isLowerCase(c) && !Character.isUpperCase(c) && !Character.isDigit(c)) {
            return false;
        }
        return true;
    }

    public static boolean isDigit(char c) {
        if (c <= 127) {
            if (c <= '9' && c >= '0') {
                return true;
            }
            return false;
        }
        return Character.isDigit(c);
    }

    public static boolean isHexDigit(char c) {
        if ((c >= 'A' && c <= 'F') || ((c >= 'a' && c <= 'f') || isDigit(c))) {
            return true;
        }
        return false;
    }

    public final void consume(int i) {
        this.ptr += i;
    }

    public final char getNextChar() {
        int i = this.ptr;
        int i2 = this.bufferLen;
        String str = this.buffer;
        if (i < i2) {
            this.ptr = i + 1;
            return str.charAt(i);
        }
        throw new ParseException(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, " getNextChar: End of buffer"), this.ptr);
    }

    public final String getNextToken(char c) {
        int i = this.ptr;
        while (true) {
            char lookAhead = lookAhead(0);
            if (lookAhead == c) {
                return this.buffer.substring(i, this.ptr);
            }
            if (lookAhead != 0) {
                consume(1);
            } else {
                throw new ParseException("EOL reached", 0);
            }
        }
    }

    public final boolean hasMoreChars() {
        if (this.ptr < this.bufferLen) {
            return true;
        }
        return false;
    }

    public final char lookAhead(int i) {
        try {
            return this.buffer.charAt(this.ptr + i);
        } catch (IndexOutOfBoundsException unused) {
            return (char) 0;
        }
    }

    public StringTokenizer(String str) {
        this.buffer = str;
        this.bufferLen = str.length();
        this.ptr = 0;
    }
}

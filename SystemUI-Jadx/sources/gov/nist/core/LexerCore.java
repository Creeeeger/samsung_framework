package gov.nist.core;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.samsung.android.knox.ex.peripheral.PeripheralConstants;
import gov.nist.javax.sip.Utils;
import java.text.ParseException;
import java.util.Hashtable;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class LexerCore extends StringTokenizer {
    public static final Hashtable globalSymbolTable = new Hashtable();
    public static final Hashtable lexerTables = new Hashtable();
    public Hashtable currentLexer;
    public Token currentMatch;

    public LexerCore() {
        this.currentLexer = new Hashtable();
    }

    public static final boolean isTokenChar(char c) {
        if (StringTokenizer.isAlphaDigit(c) || c == '!' || c == '%' || c == '\'' || c == '~' || c == '*' || c == '+' || c == '-' || c == '.' || c == '_' || c == '`') {
            return true;
        }
        return false;
    }

    public final void SPorHT() {
        try {
            char lookAhead = lookAhead(0);
            while (true) {
                if (lookAhead == ' ' || lookAhead == '\t') {
                    consume(1);
                    lookAhead = lookAhead(0);
                } else {
                    return;
                }
            }
        } catch (ParseException unused) {
        }
    }

    public final void addKeyword(int i, String str) {
        char[] cArr = Utils.toHex;
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        Integer valueOf = Integer.valueOf(i);
        this.currentLexer.put(upperCase, valueOf);
        Hashtable hashtable = globalSymbolTable;
        if (!hashtable.containsKey(valueOf)) {
            hashtable.put(valueOf, upperCase);
        }
    }

    public final String byteStringNoSemicolon() {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            try {
                char lookAhead = lookAhead(0);
                if (lookAhead == 0 || lookAhead == '\n' || lookAhead == ';' || lookAhead == ',') {
                    break;
                }
                consume(1);
                stringBuffer.append(lookAhead);
            } catch (ParseException unused) {
                return stringBuffer.toString();
            }
        }
        return stringBuffer.toString();
    }

    public final String byteStringNoSlash() {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            try {
                char lookAhead = lookAhead(0);
                if (lookAhead == 0 || lookAhead == '\n' || lookAhead == '/') {
                    break;
                }
                consume(1);
                stringBuffer.append(lookAhead);
            } catch (ParseException unused) {
                return stringBuffer.toString();
            }
        }
        return stringBuffer.toString();
    }

    public final String comment() {
        StringBuffer stringBuffer = new StringBuffer();
        if (lookAhead(0) != '(') {
            return null;
        }
        consume(1);
        while (true) {
            char nextChar = getNextChar();
            if (nextChar == ')') {
                return stringBuffer.toString();
            }
            String str = this.buffer;
            if (nextChar != 0) {
                if (nextChar == '\\') {
                    stringBuffer.append(nextChar);
                    char nextChar2 = getNextChar();
                    if (nextChar2 != 0) {
                        stringBuffer.append(nextChar2);
                    } else {
                        throw new ParseException(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, " : unexpected EOL"), this.ptr);
                    }
                } else {
                    stringBuffer.append(nextChar);
                }
            } else {
                throw new ParseException(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, " :unexpected EOL"), this.ptr);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0032 A[Catch: ParseException -> 0x0036, LOOP:0: B:2:0x0001->B:17:0x0032, LOOP_END, TRY_LEAVE, TryCatch #0 {ParseException -> 0x0036, blocks: (B:3:0x0001, B:5:0x0007, B:8:0x0011, B:9:0x0013, B:13:0x002d, B:22:0x001a, B:23:0x001f, B:24:0x0024, B:17:0x0032), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0036 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void consumeValidChars(char[] r7) {
        /*
            r6 = this;
            int r0 = r7.length
        L1:
            boolean r1 = r6.hasMoreChars()     // Catch: java.text.ParseException -> L36
            if (r1 == 0) goto L36
            r1 = 0
            char r2 = r6.lookAhead(r1)     // Catch: java.text.ParseException -> L36
            r3 = r1
            r4 = r3
        Le:
            r5 = 1
            if (r3 >= r0) goto L30
            char r4 = r7[r3]     // Catch: java.text.ParseException -> L36
            switch(r4) {
                case 65533: goto L24;
                case 65534: goto L1f;
                case 65535: goto L1a;
                default: goto L16;
            }     // Catch: java.text.ParseException -> L36
        L16:
            if (r2 != r4) goto L29
            r4 = r5
            goto L2a
        L1a:
            boolean r4 = gov.nist.core.StringTokenizer.isAlpha(r2)     // Catch: java.text.ParseException -> L36
            goto L2a
        L1f:
            boolean r4 = gov.nist.core.StringTokenizer.isDigit(r2)     // Catch: java.text.ParseException -> L36
            goto L2a
        L24:
            boolean r4 = gov.nist.core.StringTokenizer.isAlphaDigit(r2)     // Catch: java.text.ParseException -> L36
            goto L2a
        L29:
            r4 = r1
        L2a:
            if (r4 == 0) goto L2d
            goto L30
        L2d:
            int r3 = r3 + 1
            goto Le
        L30:
            if (r4 == 0) goto L36
            r6.consume(r5)     // Catch: java.text.ParseException -> L36
            goto L1
        L36:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gov.nist.core.LexerCore.consumeValidChars(char[]):void");
    }

    public final String getRest() {
        int i = this.ptr;
        String str = this.buffer;
        if (i >= str.length()) {
            return null;
        }
        return str.substring(this.ptr);
    }

    public final String getString() {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            char lookAhead = lookAhead(0);
            String str = this.buffer;
            if (lookAhead != 0) {
                if (lookAhead == '/') {
                    consume(1);
                    return stringBuffer.toString();
                }
                if (lookAhead == '\\') {
                    consume(1);
                    char lookAhead2 = lookAhead(0);
                    if (lookAhead2 != 0) {
                        consume(1);
                        stringBuffer.append(lookAhead2);
                    } else {
                        throw new ParseException(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "unexpected EOL"), this.ptr);
                    }
                } else {
                    consume(1);
                    stringBuffer.append(lookAhead);
                }
            } else {
                throw new ParseException(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "unexpected EOL"), this.ptr);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0079 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final gov.nist.core.Token match(int r7) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gov.nist.core.LexerCore.match(int):gov.nist.core.Token");
    }

    public final String number() {
        String str = this.buffer;
        int i = this.ptr;
        try {
            if (StringTokenizer.isDigit(lookAhead(0))) {
                consume(1);
                while (StringTokenizer.isDigit(lookAhead(0))) {
                    consume(1);
                }
                return str.substring(i, this.ptr);
            }
            throw new ParseException(str + ": Unexpected token at " + lookAhead(0), this.ptr);
        } catch (ParseException unused) {
            return str.substring(i, this.ptr);
        }
    }

    public final Token[] peekNextToken(int i) {
        boolean z;
        int i2 = this.ptr;
        Token[] tokenArr = new Token[i];
        for (int i3 = 0; i3 < i; i3++) {
            Token token = new Token();
            try {
                z = isTokenChar(lookAhead(0));
            } catch (ParseException unused) {
                z = false;
            }
            if (z) {
                String ttoken = ttoken();
                token.tokenValue = ttoken;
                char[] cArr = Utils.toHex;
                String upperCase = ttoken.toUpperCase(Locale.ENGLISH);
                if (this.currentLexer.containsKey(upperCase)) {
                    token.tokenType = ((Integer) this.currentLexer.get(upperCase)).intValue();
                } else {
                    token.tokenType = 4095;
                }
            } else {
                char nextChar = getNextChar();
                token.tokenValue = String.valueOf(nextChar);
                if (StringTokenizer.isAlpha(nextChar)) {
                    token.tokenType = PeripheralConstants.ErrorCode.ERROR_PERIPHERAL_PERMISSION_NOT_ALLOWED;
                } else if (StringTokenizer.isDigit(nextChar)) {
                    token.tokenType = PeripheralConstants.ErrorCode.ERROR_PERIPHERAL_CONNECTION_FAIL;
                } else {
                    token.tokenType = nextChar;
                }
            }
            tokenArr[i3] = token;
        }
        this.savedPtr = this.ptr;
        this.ptr = i2;
        return tokenArr;
    }

    public final String quotedString() {
        int i = this.ptr + 1;
        if (lookAhead(0) != '\"') {
            return null;
        }
        consume(1);
        while (true) {
            char nextChar = getNextChar();
            String str = this.buffer;
            if (nextChar == '\"') {
                return str.substring(i, this.ptr - 1);
            }
            if (nextChar != 0) {
                if (nextChar == '\\') {
                    consume(1);
                }
            } else {
                throw new ParseException(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, " :unexpected EOL"), this.ptr);
            }
        }
    }

    public final String ttoken() {
        int i = this.ptr;
        while (hasMoreChars() && isTokenChar(lookAhead(0))) {
            try {
                consume(1);
            } catch (ParseException unused) {
                return null;
            }
        }
        return this.buffer.substring(i, this.ptr);
    }

    public final String ttokenSafe() {
        int i = this.ptr;
        while (hasMoreChars()) {
            try {
                boolean z = false;
                char lookAhead = lookAhead(0);
                if (StringTokenizer.isAlphaDigit(lookAhead)) {
                    consume(1);
                } else {
                    if (lookAhead != '\'' && lookAhead != '[' && lookAhead != '*' && lookAhead != '+' && lookAhead != ':' && lookAhead != ';' && lookAhead != '?' && lookAhead != '@') {
                        switch (lookAhead) {
                            case '!':
                            case '\"':
                            case '#':
                            case '$':
                            case '%':
                                break;
                            default:
                                switch (lookAhead) {
                                    case '-':
                                    case '.':
                                    case '/':
                                        break;
                                    default:
                                        switch (lookAhead) {
                                            case ']':
                                            case '^':
                                            case '_':
                                            case '`':
                                                break;
                                            default:
                                                switch (lookAhead) {
                                                }
                                        }
                                }
                        }
                    }
                    z = true;
                    if (z) {
                        consume(1);
                    } else {
                        return this.buffer.substring(i, this.ptr);
                    }
                }
            } catch (ParseException unused) {
                return null;
            }
        }
        return this.buffer.substring(i, this.ptr);
    }

    public LexerCore(String str, String str2) {
        super(str2);
    }

    public void selectLexer(String str) {
    }
}

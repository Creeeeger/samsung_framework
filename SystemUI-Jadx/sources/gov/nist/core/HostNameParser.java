package gov.nist.core;

import java.text.ParseException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class HostNameParser extends ParserCore {
    public static final char[] VALID_DOMAIN_LABEL_CHAR = {65533, '-', '.'};
    public final boolean stripAddressScopeZones;

    public HostNameParser(String str) {
        this.stripAddressScopeZones = false;
        this.lexer = new LexerCore("charLexer", str);
        this.stripAddressScopeZones = Boolean.getBoolean("gov.nist.core.STRIP_ADDR_SCOPES");
    }

    public final Host host() {
        String substring;
        boolean z = false;
        if (this.lexer.lookAhead(0) == '[') {
            substring = ipv6Reference();
        } else {
            String rest = this.lexer.getRest();
            int indexOf = rest.indexOf(63);
            int indexOf2 = rest.indexOf(59);
            if (indexOf == -1 || (indexOf2 != -1 && indexOf > indexOf2)) {
                indexOf = indexOf2;
            }
            if (indexOf == -1) {
                indexOf = rest.length();
            }
            String substring2 = rest.substring(0, indexOf);
            int indexOf3 = substring2.indexOf(58);
            if (indexOf3 != -1 && substring2.indexOf(58, indexOf3 + 1) != -1) {
                z = true;
            }
            if (z) {
                LexerCore lexerCore = this.lexer;
                int i = lexerCore.ptr;
                lexerCore.consumeValidChars(new char[]{65533, ':'});
                StringBuffer stringBuffer = new StringBuffer("[");
                LexerCore lexerCore2 = this.lexer;
                stringBuffer.append(lexerCore2.buffer.substring(i, lexerCore2.ptr));
                stringBuffer.append("]");
                substring = stringBuffer.toString();
            } else {
                LexerCore lexerCore3 = this.lexer;
                int i2 = lexerCore3.ptr;
                lexerCore3.consumeValidChars(VALID_DOMAIN_LABEL_CHAR);
                LexerCore lexerCore4 = this.lexer;
                substring = lexerCore4.buffer.substring(i2, lexerCore4.ptr);
            }
        }
        if (substring.length() != 0) {
            return new Host(substring);
        }
        throw new ParseException(this.lexer.buffer + ": Missing host name", this.lexer.ptr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x004b, code lost:
    
        if (r0 != '?') goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008e, code lost:
    
        if (r5 == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b8, code lost:
    
        throw new java.text.ParseException(r4.lexer.buffer + " Illegal character in hostname:" + r4.lexer.lookAhead(0), r4.lexer.ptr);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008b, code lost:
    
        if (r4.stripAddressScopeZones != false) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final gov.nist.core.HostPort hostPort(boolean r5) {
        /*
            r4 = this;
            gov.nist.core.Host r0 = r4.host()
            gov.nist.core.HostPort r1 = new gov.nist.core.HostPort
            r1.<init>()
            r1.host = r0
            if (r5 == 0) goto L12
            gov.nist.core.LexerCore r0 = r4.lexer
            r0.SPorHT()
        L12:
            gov.nist.core.LexerCore r0 = r4.lexer
            boolean r0 = r0.hasMoreChars()
            if (r0 == 0) goto Lb9
            gov.nist.core.LexerCore r0 = r4.lexer
            r2 = 0
            char r0 = r0.lookAhead(r2)
            r3 = 9
            if (r0 == r3) goto Lb9
            r3 = 10
            if (r0 == r3) goto Lb9
            r3 = 13
            if (r0 == r3) goto Lb9
            r3 = 32
            if (r0 == r3) goto Lb9
            r3 = 37
            if (r0 == r3) goto L89
            r3 = 44
            if (r0 == r3) goto Lb9
            r3 = 47
            if (r0 == r3) goto Lb9
            r3 = 58
            if (r0 == r3) goto L4e
            r3 = 59
            if (r0 == r3) goto Lb9
            r3 = 62
            if (r0 == r3) goto Lb9
            r3 = 63
            if (r0 == r3) goto Lb9
            goto L8e
        L4e:
            gov.nist.core.LexerCore r0 = r4.lexer
            r2 = 1
            r0.consume(r2)
            if (r5 == 0) goto L5b
            gov.nist.core.LexerCore r5 = r4.lexer
            r5.SPorHT()
        L5b:
            gov.nist.core.LexerCore r5 = r4.lexer     // Catch: java.lang.Throwable -> L68 java.lang.NumberFormatException -> L6a
            java.lang.String r5 = r5.number()     // Catch: java.lang.Throwable -> L68 java.lang.NumberFormatException -> L6a
            int r5 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.Throwable -> L68 java.lang.NumberFormatException -> L6a
            r1.port = r5     // Catch: java.lang.Throwable -> L68 java.lang.NumberFormatException -> L6a
            goto Lb9
        L68:
            r4 = move-exception
            throw r4
        L6a:
            java.text.ParseException r5 = new java.text.ParseException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            gov.nist.core.LexerCore r1 = r4.lexer
            java.lang.String r1 = r1.buffer
            r0.append(r1)
            java.lang.String r1 = " :Error parsing port "
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            gov.nist.core.LexerCore r4 = r4.lexer
            int r4 = r4.ptr
            r5.<init>(r0, r4)
            throw r5
        L89:
            boolean r0 = r4.stripAddressScopeZones
            if (r0 == 0) goto L8e
            goto Lb9
        L8e:
            if (r5 == 0) goto L91
            goto Lb9
        L91:
            java.text.ParseException r5 = new java.text.ParseException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            gov.nist.core.LexerCore r1 = r4.lexer
            java.lang.String r1 = r1.buffer
            r0.append(r1)
            java.lang.String r1 = " Illegal character in hostname:"
            r0.append(r1)
            gov.nist.core.LexerCore r1 = r4.lexer
            char r1 = r1.lookAhead(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            gov.nist.core.LexerCore r4 = r4.lexer
            int r4 = r4.ptr
            r5.<init>(r0, r4)
            throw r5
        Lb9:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: gov.nist.core.HostNameParser.hostPort(boolean):gov.nist.core.HostPort");
    }

    public final String ipv6Reference() {
        int indexOf;
        StringBuffer stringBuffer = new StringBuffer();
        if (!this.stripAddressScopeZones) {
            while (true) {
                if (!this.lexer.hasMoreChars()) {
                    break;
                }
                char lookAhead = this.lexer.lookAhead(0);
                if (!StringTokenizer.isHexDigit(lookAhead) && lookAhead != '.' && lookAhead != ':' && lookAhead != '[') {
                    if (lookAhead == ']') {
                        this.lexer.consume(1);
                        stringBuffer.append(lookAhead);
                        return stringBuffer.toString();
                    }
                } else {
                    this.lexer.consume(1);
                    stringBuffer.append(lookAhead);
                }
            }
        } else {
            while (true) {
                if (!this.lexer.hasMoreChars()) {
                    break;
                }
                char lookAhead2 = this.lexer.lookAhead(0);
                if (!StringTokenizer.isHexDigit(lookAhead2) && lookAhead2 != '.' && lookAhead2 != ':' && lookAhead2 != '[') {
                    if (lookAhead2 == ']') {
                        this.lexer.consume(1);
                        stringBuffer.append(lookAhead2);
                        return stringBuffer.toString();
                    }
                    if (lookAhead2 == '%') {
                        this.lexer.consume(1);
                        String rest = this.lexer.getRest();
                        if (rest != null && rest.length() != 0 && (indexOf = rest.indexOf(93)) != -1) {
                            this.lexer.consume(indexOf + 1);
                            stringBuffer.append("]");
                            return stringBuffer.toString();
                        }
                    }
                } else {
                    this.lexer.consume(1);
                    stringBuffer.append(lookAhead2);
                }
            }
        }
        throw new ParseException(this.lexer.buffer + ": Illegal Host name ", this.lexer.ptr);
    }

    public HostNameParser(LexerCore lexerCore) {
        this.stripAddressScopeZones = false;
        this.lexer = lexerCore;
        lexerCore.selectLexer("charLexer");
        this.stripAddressScopeZones = Boolean.getBoolean("gov.nist.core.STRIP_ADDR_SCOPES");
    }
}

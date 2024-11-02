package gov.nist.javax.sip.parser;

import gov.nist.javax.sip.header.SIPHeader;
import gov.nist.javax.sip.header.UserAgent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class UserAgentParser extends HeaderParser {
    public UserAgentParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        UserAgent userAgent = new UserAgent();
        headerName(2065);
        if (this.lexer.lookAhead(0) != '\n') {
            while (this.lexer.lookAhead(0) != '\n' && this.lexer.lookAhead(0) != 0) {
                if (this.lexer.lookAhead(0) == '(') {
                    userAgent.addProductToken("(" + this.lexer.comment() + ')');
                } else {
                    ((Lexer) this.lexer).SPorHT();
                    String byteStringNoSlash = this.lexer.byteStringNoSlash();
                    if (byteStringNoSlash != null) {
                        StringBuffer stringBuffer = new StringBuffer(byteStringNoSlash);
                        if (this.lexer.peekNextToken(1)[0].tokenType == 47) {
                            this.lexer.match(47);
                            ((Lexer) this.lexer).SPorHT();
                            String byteStringNoSlash2 = this.lexer.byteStringNoSlash();
                            if (byteStringNoSlash2 != null) {
                                stringBuffer.append("/");
                                stringBuffer.append(byteStringNoSlash2);
                            } else {
                                throw createParseException("Expected product version");
                            }
                        }
                        userAgent.addProductToken(stringBuffer.toString());
                    } else {
                        throw createParseException("Expected product string");
                    }
                }
                this.lexer.SPorHT();
            }
            return userAgent;
        }
        throw createParseException("empty header");
    }

    public UserAgentParser(Lexer lexer) {
        super(lexer);
    }
}

package gov.nist.javax.sip.parser;

import gov.nist.javax.sip.header.Expires;
import gov.nist.javax.sip.header.SIPHeader;
import javax.sip.InvalidArgumentException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ExpiresParser extends HeaderParser {
    public ExpiresParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        Expires expires = new Expires();
        this.lexer.match(2090);
        this.lexer.SPorHT();
        this.lexer.match(58);
        this.lexer.SPorHT();
        String ttoken = this.lexer.ttoken();
        this.lexer.match(10);
        try {
            expires.setExpires(Integer.parseInt(ttoken));
            return expires;
        } catch (NumberFormatException unused) {
            throw createParseException("bad integer format");
        } catch (InvalidArgumentException e) {
            throw createParseException(e.getMessage());
        }
    }

    public ExpiresParser(Lexer lexer) {
        super(lexer);
    }
}

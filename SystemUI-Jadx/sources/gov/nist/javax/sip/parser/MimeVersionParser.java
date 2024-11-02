package gov.nist.javax.sip.parser;

import gov.nist.javax.sip.header.MimeVersion;
import gov.nist.javax.sip.header.SIPHeader;
import javax.sip.InvalidArgumentException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class MimeVersionParser extends HeaderParser {
    public MimeVersionParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        MimeVersion mimeVersion = new MimeVersion();
        headerName(2060);
        mimeVersion.setHeaderName("MIME-Version");
        try {
            mimeVersion.setMajorVersion(Integer.parseInt(this.lexer.number()));
            this.lexer.match(46);
            mimeVersion.setMinorVersion(Integer.parseInt(this.lexer.number()));
            this.lexer.SPorHT();
            this.lexer.match(10);
            return mimeVersion;
        } catch (InvalidArgumentException e) {
            throw createParseException(e.getMessage());
        }
    }

    public MimeVersionParser(Lexer lexer) {
        super(lexer);
    }
}

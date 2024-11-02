package gov.nist.javax.sip.parser;

import gov.nist.javax.sip.header.SIPDateHeader;
import gov.nist.javax.sip.header.SIPHeader;
import java.util.Calendar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class DateParser extends HeaderParser {
    public DateParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        headerName(2080);
        wkday();
        this.lexer.match(44);
        this.lexer.match(32);
        Calendar date = date();
        this.lexer.match(32);
        time(date);
        this.lexer.match(32);
        String lowerCase = this.lexer.ttoken().toLowerCase();
        if ("gmt".equals(lowerCase)) {
            this.lexer.match(10);
            SIPDateHeader sIPDateHeader = new SIPDateHeader();
            sIPDateHeader.setDate(date);
            return sIPDateHeader;
        }
        throw createParseException("Bad Time Zone " + lowerCase);
    }

    public DateParser(Lexer lexer) {
        super(lexer);
    }
}

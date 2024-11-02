package gov.nist.javax.sip.parser;

import gov.nist.javax.sip.header.SIPHeader;
import gov.nist.javax.sip.header.Supported;
import gov.nist.javax.sip.header.SupportedList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SupportedParser extends HeaderParser {
    public SupportedParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        SupportedList supportedList = new SupportedList();
        headerName(2068);
        while (this.lexer.lookAhead(0) != '\n') {
            this.lexer.SPorHT();
            Supported supported = new Supported();
            supported.setHeaderName("Supported");
            this.lexer.match(4095);
            supported.setOptionTag(this.lexer.currentMatch.tokenValue);
            this.lexer.SPorHT();
            supportedList.add((SIPHeader) supported);
            while (this.lexer.lookAhead(0) == ',') {
                this.lexer.match(44);
                this.lexer.SPorHT();
                Supported supported2 = new Supported();
                this.lexer.match(4095);
                supported2.setOptionTag(this.lexer.currentMatch.tokenValue);
                this.lexer.SPorHT();
                supportedList.add((SIPHeader) supported2);
            }
        }
        return supportedList;
    }

    public SupportedParser(Lexer lexer) {
        super(lexer);
    }
}

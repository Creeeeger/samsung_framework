package gov.nist.javax.sip.parser;

import gov.nist.javax.sip.header.AddressParametersHeader;
import gov.nist.javax.sip.header.SIPHeader;
import gov.nist.javax.sip.header.To;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ToParser extends AddressParametersParser {
    public ToParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        headerName(2063);
        To to = new To();
        parse((AddressParametersHeader) to);
        this.lexer.match(10);
        return to;
    }

    public ToParser(Lexer lexer) {
        super(lexer);
    }
}

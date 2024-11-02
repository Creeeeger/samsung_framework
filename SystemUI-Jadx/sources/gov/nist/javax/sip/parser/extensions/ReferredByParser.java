package gov.nist.javax.sip.parser.extensions;

import gov.nist.javax.sip.header.AddressParametersHeader;
import gov.nist.javax.sip.header.SIPHeader;
import gov.nist.javax.sip.header.extensions.ReferredBy;
import gov.nist.javax.sip.parser.AddressParametersParser;
import gov.nist.javax.sip.parser.Lexer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ReferredByParser extends AddressParametersParser {
    public ReferredByParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        headerName(2132);
        ReferredBy referredBy = new ReferredBy();
        parse((AddressParametersHeader) referredBy);
        this.lexer.match(10);
        return referredBy;
    }

    public ReferredByParser(Lexer lexer) {
        super(lexer);
    }
}

package gov.nist.javax.sip.parser.ims;

import gov.nist.javax.sip.header.AddressParametersHeader;
import gov.nist.javax.sip.header.SIPHeader;
import gov.nist.javax.sip.header.ims.PPreferredIdentity;
import gov.nist.javax.sip.parser.AddressParametersParser;
import gov.nist.javax.sip.parser.Lexer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class PPreferredIdentityParser extends AddressParametersParser {
    public PPreferredIdentityParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        this.lexer.match(2122);
        this.lexer.SPorHT();
        this.lexer.match(58);
        this.lexer.SPorHT();
        PPreferredIdentity pPreferredIdentity = new PPreferredIdentity();
        parse((AddressParametersHeader) pPreferredIdentity);
        return pPreferredIdentity;
    }

    public PPreferredIdentityParser(Lexer lexer) {
        super(lexer);
    }
}

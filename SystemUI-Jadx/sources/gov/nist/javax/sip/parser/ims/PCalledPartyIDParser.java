package gov.nist.javax.sip.parser.ims;

import gov.nist.javax.sip.header.AddressParametersHeader;
import gov.nist.javax.sip.header.SIPHeader;
import gov.nist.javax.sip.header.ims.PCalledPartyID;
import gov.nist.javax.sip.parser.AddressParametersParser;
import gov.nist.javax.sip.parser.Lexer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class PCalledPartyIDParser extends AddressParametersParser {
    public PCalledPartyIDParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        this.lexer.match(2128);
        this.lexer.SPorHT();
        this.lexer.match(58);
        this.lexer.SPorHT();
        PCalledPartyID pCalledPartyID = new PCalledPartyID();
        parse((AddressParametersHeader) pCalledPartyID);
        return pCalledPartyID;
    }

    public PCalledPartyIDParser(Lexer lexer) {
        super(lexer);
    }
}

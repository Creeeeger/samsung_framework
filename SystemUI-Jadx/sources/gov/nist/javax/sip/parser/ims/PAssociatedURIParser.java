package gov.nist.javax.sip.parser.ims;

import gov.nist.javax.sip.header.AddressParametersHeader;
import gov.nist.javax.sip.header.SIPHeader;
import gov.nist.javax.sip.header.ims.PAssociatedURI;
import gov.nist.javax.sip.header.ims.PAssociatedURIList;
import gov.nist.javax.sip.parser.AddressParametersParser;
import gov.nist.javax.sip.parser.Lexer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class PAssociatedURIParser extends AddressParametersParser {
    public PAssociatedURIParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        PAssociatedURIList pAssociatedURIList = new PAssociatedURIList();
        headerName(2129);
        PAssociatedURI pAssociatedURI = new PAssociatedURI();
        pAssociatedURI.setHeaderName("P-Associated-URI");
        parse((AddressParametersHeader) pAssociatedURI);
        pAssociatedURIList.add((SIPHeader) pAssociatedURI);
        this.lexer.SPorHT();
        while (this.lexer.lookAhead(0) == ',') {
            this.lexer.match(44);
            this.lexer.SPorHT();
            PAssociatedURI pAssociatedURI2 = new PAssociatedURI();
            parse((AddressParametersHeader) pAssociatedURI2);
            pAssociatedURIList.add((SIPHeader) pAssociatedURI2);
            this.lexer.SPorHT();
        }
        this.lexer.SPorHT();
        this.lexer.match(10);
        return pAssociatedURIList;
    }

    public PAssociatedURIParser(Lexer lexer) {
        super(lexer);
    }
}

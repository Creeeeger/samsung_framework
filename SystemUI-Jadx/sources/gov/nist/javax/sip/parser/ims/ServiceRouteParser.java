package gov.nist.javax.sip.parser.ims;

import gov.nist.javax.sip.header.AddressParametersHeader;
import gov.nist.javax.sip.header.SIPHeader;
import gov.nist.javax.sip.header.ims.ServiceRoute;
import gov.nist.javax.sip.header.ims.ServiceRouteList;
import gov.nist.javax.sip.parser.AddressParametersParser;
import gov.nist.javax.sip.parser.Lexer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ServiceRouteParser extends AddressParametersParser {
    public ServiceRouteParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        ServiceRouteList serviceRouteList = new ServiceRouteList();
        this.lexer.match(2120);
        this.lexer.SPorHT();
        this.lexer.match(58);
        this.lexer.SPorHT();
        while (true) {
            ServiceRoute serviceRoute = new ServiceRoute();
            parse((AddressParametersHeader) serviceRoute);
            serviceRouteList.add((SIPHeader) serviceRoute);
            this.lexer.SPorHT();
            if (this.lexer.lookAhead(0) != ',') {
                break;
            }
            this.lexer.match(44);
            this.lexer.SPorHT();
        }
        if (this.lexer.lookAhead(0) == '\n') {
            return serviceRouteList;
        }
        throw createParseException("unexpected char");
    }

    public ServiceRouteParser(Lexer lexer) {
        super(lexer);
    }
}

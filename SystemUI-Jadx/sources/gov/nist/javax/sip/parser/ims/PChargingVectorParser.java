package gov.nist.javax.sip.parser.ims;

import gov.nist.javax.sip.header.SIPHeader;
import gov.nist.javax.sip.header.ims.PChargingVector;
import gov.nist.javax.sip.parser.Lexer;
import gov.nist.javax.sip.parser.ParametersParser;
import java.text.ParseException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class PChargingVectorParser extends ParametersParser {
    public PChargingVectorParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        headerName(2125);
        PChargingVector pChargingVector = new PChargingVector();
        while (this.lexer.lookAhead(0) != '\n') {
            pChargingVector.setParameter(nameValue());
            this.lexer.SPorHT();
            char lookAhead = this.lexer.lookAhead(0);
            if (lookAhead == '\n' || lookAhead == 0) {
                break;
            }
            this.lexer.match(59);
            this.lexer.SPorHT();
        }
        parse(pChargingVector);
        if (pChargingVector.getParameter("icid-value") != null) {
            return pChargingVector;
        }
        throw new ParseException("Missing a required Parameter : icid-value", 0);
    }

    public PChargingVectorParser(Lexer lexer) {
        super(lexer);
    }
}

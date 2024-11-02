package gov.nist.javax.sip.parser.ims;

import gov.nist.javax.sip.header.SIPHeader;
import gov.nist.javax.sip.header.ims.PVisitedNetworkID;
import gov.nist.javax.sip.header.ims.PVisitedNetworkIDList;
import gov.nist.javax.sip.parser.Lexer;
import gov.nist.javax.sip.parser.ParametersParser;
import java.text.ParseException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class PVisitedNetworkIDParser extends ParametersParser {
    public PVisitedNetworkIDParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        char lookAhead;
        PVisitedNetworkIDList pVisitedNetworkIDList = new PVisitedNetworkIDList();
        this.lexer.match(2123);
        this.lexer.SPorHT();
        this.lexer.match(58);
        this.lexer.SPorHT();
        while (true) {
            PVisitedNetworkID pVisitedNetworkID = new PVisitedNetworkID();
            if (this.lexer.lookAhead(0) == '\"') {
                parseQuotedString(pVisitedNetworkID);
            } else {
                this.lexer.match(4095);
                pVisitedNetworkID.setVisitedNetworkID(this.lexer.currentMatch);
                parse(pVisitedNetworkID);
            }
            pVisitedNetworkIDList.add((SIPHeader) pVisitedNetworkID);
            this.lexer.SPorHT();
            lookAhead = this.lexer.lookAhead(0);
            if (lookAhead != ',') {
                break;
            }
            this.lexer.match(44);
            this.lexer.SPorHT();
        }
        if (lookAhead == '\n') {
            return pVisitedNetworkIDList;
        }
        throw createParseException("unexpected char = " + lookAhead);
    }

    public final void parseQuotedString(PVisitedNetworkID pVisitedNetworkID) {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.lexer.lookAhead(0) == '\"') {
            this.lexer.consume(1);
            while (true) {
                char nextChar = this.lexer.getNextChar();
                if (nextChar == '\"') {
                    pVisitedNetworkID.setVisitedNetworkID(stringBuffer.toString());
                    parse(pVisitedNetworkID);
                    return;
                } else if (nextChar != 0) {
                    if (nextChar == '\\') {
                        stringBuffer.append(nextChar);
                        stringBuffer.append(this.lexer.getNextChar());
                    } else {
                        stringBuffer.append(nextChar);
                    }
                } else {
                    throw new ParseException("unexpected EOL", 1);
                }
            }
        } else {
            throw createParseException("unexpected char");
        }
    }

    public PVisitedNetworkIDParser(Lexer lexer) {
        super(lexer);
    }
}

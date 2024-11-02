package gov.nist.javax.sip.parser.ims;

import gov.nist.javax.sip.header.SIPHeader;
import gov.nist.javax.sip.header.SIPHeaderList;
import gov.nist.javax.sip.header.ims.SecurityAgree;
import gov.nist.javax.sip.header.ims.SecurityClient;
import gov.nist.javax.sip.header.ims.SecurityClientList;
import gov.nist.javax.sip.header.ims.SecurityServer;
import gov.nist.javax.sip.header.ims.SecurityServerList;
import gov.nist.javax.sip.header.ims.SecurityVerify;
import gov.nist.javax.sip.header.ims.SecurityVerifyList;
import gov.nist.javax.sip.parser.HeaderParser;
import gov.nist.javax.sip.parser.Lexer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SecurityAgreeParser extends HeaderParser {
    public SecurityAgreeParser(String str) {
        super(str);
    }

    public final SIPHeaderList parse(SecurityAgree securityAgree) {
        SIPHeaderList securityVerifyList;
        if (securityAgree.getClass().isInstance(new SecurityClient())) {
            securityVerifyList = new SecurityClientList();
        } else if (securityAgree.getClass().isInstance(new SecurityServer())) {
            securityVerifyList = new SecurityServerList();
        } else if (securityAgree.getClass().isInstance(new SecurityVerify())) {
            securityVerifyList = new SecurityVerifyList();
        } else {
            return null;
        }
        this.lexer.SPorHT();
        this.lexer.match(4095);
        securityAgree.setSecurityMechanism(this.lexer.currentMatch.tokenValue);
        this.lexer.SPorHT();
        char lookAhead = this.lexer.lookAhead(0);
        if (lookAhead == '\n') {
            securityVerifyList.add((SIPHeader) securityAgree);
            return securityVerifyList;
        }
        if (lookAhead == ';') {
            this.lexer.match(59);
        }
        this.lexer.SPorHT();
        while (this.lexer.lookAhead(0) != '\n') {
            securityAgree.setParameter(nameValue());
            this.lexer.SPorHT();
            char lookAhead2 = this.lexer.lookAhead(0);
            if (lookAhead2 == '\n' || lookAhead2 == 0) {
                break;
            }
            if (lookAhead2 == ',') {
                securityVerifyList.add((SIPHeader) securityAgree);
                if (securityAgree.getClass().isInstance(new SecurityClient())) {
                    securityAgree = new SecurityClient();
                } else if (securityAgree.getClass().isInstance(new SecurityServer())) {
                    securityAgree = new SecurityServer();
                } else if (securityAgree.getClass().isInstance(new SecurityVerify())) {
                    securityAgree = new SecurityVerify();
                }
                this.lexer.match(44);
                this.lexer.SPorHT();
                this.lexer.match(4095);
                securityAgree.setSecurityMechanism(this.lexer.currentMatch.tokenValue);
            }
            this.lexer.SPorHT();
            if (this.lexer.lookAhead(0) == ';') {
                this.lexer.match(59);
            }
            this.lexer.SPorHT();
        }
        securityVerifyList.add((SIPHeader) securityAgree);
        return securityVerifyList;
    }

    public SecurityAgreeParser(Lexer lexer) {
        super(lexer);
    }
}

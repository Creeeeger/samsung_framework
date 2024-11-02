package gov.nist.javax.sip.parser;

import gov.nist.javax.sip.header.SIPHeader;
import gov.nist.javax.sip.header.Subject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SubjectParser extends HeaderParser {
    public SubjectParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        Subject subject = new Subject();
        headerName(2085);
        this.lexer.SPorHT();
        subject.setSubject(this.lexer.getRest().trim());
        return subject;
    }

    public SubjectParser(Lexer lexer) {
        super(lexer);
    }
}

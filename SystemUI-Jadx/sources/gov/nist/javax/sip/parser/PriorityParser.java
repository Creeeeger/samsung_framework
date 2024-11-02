package gov.nist.javax.sip.parser;

import gov.nist.javax.sip.header.Priority;
import gov.nist.javax.sip.header.SIPHeader;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class PriorityParser extends HeaderParser {
    public PriorityParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        Priority priority = new Priority();
        headerName(2081);
        priority.setHeaderName("Priority");
        this.lexer.SPorHT();
        priority.setPriority(this.lexer.ttokenSafe());
        this.lexer.SPorHT();
        this.lexer.match(10);
        return priority;
    }

    public PriorityParser(Lexer lexer) {
        super(lexer);
    }
}

package gov.nist.javax.sip.parser;

import com.sec.ims.volte2.data.VolteConstants;
import gov.nist.javax.sip.header.AddressParametersHeader;
import gov.nist.javax.sip.header.ReplyTo;
import gov.nist.javax.sip.header.SIPHeader;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ReplyToParser extends AddressParametersParser {
    public ReplyToParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        ReplyTo replyTo = new ReplyTo();
        headerName(VolteConstants.ErrorCode.SESSION_EXPIRED);
        replyTo.setHeaderName("Reply-To");
        parse((AddressParametersHeader) replyTo);
        return replyTo;
    }

    public ReplyToParser(Lexer lexer) {
        super(lexer);
    }
}

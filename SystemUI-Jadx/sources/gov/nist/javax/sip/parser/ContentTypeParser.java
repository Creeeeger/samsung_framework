package gov.nist.javax.sip.parser;

import gov.nist.core.LexerCore;
import gov.nist.core.Token;
import gov.nist.javax.sip.header.ContentType;
import gov.nist.javax.sip.header.SIPHeader;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ContentTypeParser extends ParametersParser {
    public ContentTypeParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        ContentType contentType = new ContentType();
        headerName(2086);
        this.lexer.match(4095);
        LexerCore lexerCore = this.lexer;
        Token token = lexerCore.currentMatch;
        lexerCore.SPorHT();
        contentType.setContentType(token.tokenValue);
        this.lexer.match(47);
        this.lexer.match(4095);
        LexerCore lexerCore2 = this.lexer;
        Token token2 = lexerCore2.currentMatch;
        lexerCore2.SPorHT();
        contentType.setContentSubType(token2.tokenValue);
        parse(contentType);
        this.lexer.match(10);
        return contentType;
    }

    public ContentTypeParser(Lexer lexer) {
        super(lexer);
    }
}

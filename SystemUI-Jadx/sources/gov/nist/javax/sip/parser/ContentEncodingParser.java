package gov.nist.javax.sip.parser;

import gov.nist.javax.sip.header.ContentEncoding;
import gov.nist.javax.sip.header.ContentEncodingList;
import gov.nist.javax.sip.header.SIPHeader;
import java.text.ParseException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ContentEncodingParser extends HeaderParser {
    public ContentEncodingParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        ContentEncodingList contentEncodingList = new ContentEncodingList();
        try {
            headerName(2083);
            while (this.lexer.lookAhead(0) != '\n') {
                ContentEncoding contentEncoding = new ContentEncoding();
                contentEncoding.setHeaderName("Content-Encoding");
                this.lexer.SPorHT();
                this.lexer.match(4095);
                contentEncoding.setEncoding(this.lexer.currentMatch.tokenValue);
                this.lexer.SPorHT();
                contentEncodingList.add((SIPHeader) contentEncoding);
                while (this.lexer.lookAhead(0) == ',') {
                    ContentEncoding contentEncoding2 = new ContentEncoding();
                    this.lexer.match(44);
                    this.lexer.SPorHT();
                    this.lexer.match(4095);
                    this.lexer.SPorHT();
                    contentEncoding2.setEncoding(this.lexer.currentMatch.tokenValue);
                    this.lexer.SPorHT();
                    contentEncodingList.add((SIPHeader) contentEncoding2);
                }
            }
            return contentEncodingList;
        } catch (ParseException e) {
            throw createParseException(e.getMessage());
        }
    }

    public ContentEncodingParser(Lexer lexer) {
        super(lexer);
    }
}

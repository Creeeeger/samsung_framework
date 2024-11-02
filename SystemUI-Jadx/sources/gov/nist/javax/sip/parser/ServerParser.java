package gov.nist.javax.sip.parser;

import gov.nist.core.LexerCore;
import gov.nist.javax.sip.header.SIPHeader;
import gov.nist.javax.sip.header.Server;
import java.text.ParseException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ServerParser extends HeaderParser {
    public ServerParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        LexerCore lexerCore;
        int i;
        Server server = new Server();
        headerName(2066);
        int i2 = 0;
        if (this.lexer.lookAhead(0) != '\n') {
            while (this.lexer.lookAhead(0) != '\n' && this.lexer.lookAhead(0) != 0) {
                if (this.lexer.lookAhead(0) == '(') {
                    server.addProductToken("(" + this.lexer.comment() + ')');
                } else {
                    try {
                        lexerCore = this.lexer;
                        i = lexerCore.ptr;
                    } catch (ParseException unused) {
                    }
                    try {
                        String string = lexerCore.getString();
                        if (string.charAt(string.length() - 1) == '\n') {
                            string = string.trim();
                        }
                        server.addProductToken(string);
                    } catch (ParseException unused2) {
                        i2 = i;
                        LexerCore lexerCore2 = this.lexer;
                        lexerCore2.ptr = i2;
                        server.addProductToken(lexerCore2.getRest().trim());
                        return server;
                    }
                }
            }
            return server;
        }
        throw createParseException("empty header");
    }

    public ServerParser(Lexer lexer) {
        super(lexer);
    }
}

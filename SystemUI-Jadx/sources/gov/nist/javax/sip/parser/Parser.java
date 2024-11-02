package gov.nist.javax.sip.parser;

import androidx.fragment.app.FragmentTransaction$$ExternalSyntheticOutline0;
import gov.nist.core.LexerCore;
import gov.nist.core.ParserCore;
import gov.nist.core.Token;
import java.text.ParseException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class Parser extends ParserCore {
    public final ParseException createParseException(String str) {
        return new ParseException(FragmentTransaction$$ExternalSyntheticOutline0.m(new StringBuilder(), this.lexer.buffer, ":", str), this.lexer.ptr);
    }

    public final String method() {
        Token token = this.lexer.peekNextToken(1)[0];
        int i = token.tokenType;
        if (i != 2053 && i != 2054 && i != 2056 && i != 2055 && i != 2052 && i != 2057 && i != 2101 && i != 2102 && i != 2115 && i != 2118 && i != 4095) {
            throw createParseException("Invalid Method");
        }
        LexerCore lexerCore = this.lexer;
        lexerCore.ptr = lexerCore.savedPtr;
        return token.tokenValue;
    }
}

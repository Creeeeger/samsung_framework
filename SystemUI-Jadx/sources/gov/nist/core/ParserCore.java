package gov.nist.core;

import java.text.ParseException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class ParserCore {
    public static int nesting_level;
    public LexerCore lexer;

    public static void dbg_enter() {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (true) {
            int i2 = nesting_level;
            if (i < i2) {
                stringBuffer.append(">");
                i++;
            } else {
                nesting_level = i2 + 1;
                return;
            }
        }
    }

    public static void dbg_leave() {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (true) {
            int i2 = nesting_level;
            if (i < i2) {
                stringBuffer.append("<");
                i++;
            } else {
                nesting_level = i2 - 1;
                return;
            }
        }
    }

    public final NameValue nameValue() {
        boolean z;
        this.lexer.match(4095);
        LexerCore lexerCore = this.lexer;
        Token token = lexerCore.currentMatch;
        lexerCore.SPorHT();
        try {
            String str = "";
            boolean z2 = true;
            if (this.lexer.lookAhead(0) == '=') {
                this.lexer.consume(1);
                this.lexer.SPorHT();
                if (this.lexer.lookAhead(0) == '\"') {
                    str = this.lexer.quotedString();
                    z = true;
                    z2 = false;
                } else {
                    this.lexer.match(4095);
                    String str2 = this.lexer.currentMatch.tokenValue;
                    if (str2 == null) {
                        z = false;
                    } else {
                        str = str2;
                        z = false;
                        z2 = false;
                    }
                }
                NameValue nameValue = new NameValue(token.tokenValue, str, z2);
                if (z) {
                    nameValue.setQuotedValue();
                }
                return nameValue;
            }
            return new NameValue(token.tokenValue, "", true);
        } catch (ParseException unused) {
            return new NameValue(token.tokenValue, null, false);
        }
    }
}

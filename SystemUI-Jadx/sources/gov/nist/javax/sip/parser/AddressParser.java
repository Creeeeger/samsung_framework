package gov.nist.javax.sip.parser;

import gov.nist.javax.sip.address.AddressImpl;
import gov.nist.javax.sip.address.GenericURI;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AddressParser extends Parser {
    public AddressParser(Lexer lexer) {
        this.lexer = lexer;
        lexer.selectLexer("charLexer");
    }

    public final AddressImpl address() {
        char lookAhead;
        int i = 0;
        while (this.lexer.hasMoreChars() && (lookAhead = this.lexer.lookAhead(i)) != '<' && lookAhead != '\"' && lookAhead != ':' && lookAhead != '/') {
            if (lookAhead != 0) {
                i++;
            } else {
                throw createParseException("unexpected EOL");
            }
        }
        char lookAhead2 = this.lexer.lookAhead(i);
        if (lookAhead2 != '<' && lookAhead2 != '\"') {
            if (lookAhead2 != ':' && lookAhead2 != '/') {
                throw createParseException("Bad address spec");
            }
            AddressImpl addressImpl = new AddressImpl();
            GenericURI uriReference = new URLParser((Lexer) this.lexer).uriReference(false);
            addressImpl.setAddressType(2);
            addressImpl.setURI(uriReference);
            return addressImpl;
        }
        return nameAddr();
    }

    public final AddressImpl nameAddr() {
        String nextToken;
        if (this.lexer.lookAhead(0) == '<') {
            this.lexer.consume(1);
            this.lexer.selectLexer("sip_urlLexer");
            this.lexer.SPorHT();
            GenericURI uriReference = new URLParser((Lexer) this.lexer).uriReference(true);
            AddressImpl addressImpl = new AddressImpl();
            addressImpl.setAddressType(1);
            addressImpl.setURI(uriReference);
            this.lexer.SPorHT();
            this.lexer.match(62);
            return addressImpl;
        }
        AddressImpl addressImpl2 = new AddressImpl();
        addressImpl2.setAddressType(1);
        if (this.lexer.lookAhead(0) == '\"') {
            nextToken = this.lexer.quotedString();
            this.lexer.SPorHT();
        } else {
            nextToken = this.lexer.getNextToken('<');
        }
        addressImpl2.setDisplayName(nextToken.trim());
        this.lexer.match(60);
        this.lexer.SPorHT();
        GenericURI uriReference2 = new URLParser((Lexer) this.lexer).uriReference(true);
        new AddressImpl();
        addressImpl2.setAddressType(1);
        addressImpl2.setURI(uriReference2);
        this.lexer.SPorHT();
        this.lexer.match(62);
        return addressImpl2;
    }

    public AddressParser(String str) {
        this.lexer = new Lexer("charLexer", str);
    }
}

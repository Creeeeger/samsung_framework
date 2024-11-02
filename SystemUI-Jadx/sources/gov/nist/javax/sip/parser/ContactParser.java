package gov.nist.javax.sip.parser;

import gov.nist.javax.sip.header.AddressParametersHeader;
import gov.nist.javax.sip.header.Contact;
import gov.nist.javax.sip.header.ContactList;
import gov.nist.javax.sip.header.SIPHeader;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ContactParser extends AddressParametersParser {
    public ContactParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        char lookAhead;
        headerName(2087);
        ContactList contactList = new ContactList();
        while (true) {
            Contact contact = new Contact();
            if (this.lexer.lookAhead(0) == '*') {
                char lookAhead2 = this.lexer.lookAhead(1);
                if (lookAhead2 != ' ' && lookAhead2 != '\t' && lookAhead2 != '\r' && lookAhead2 != '\n') {
                    parse((AddressParametersHeader) contact);
                } else {
                    this.lexer.match(42);
                    contact.setWildCardFlag$1();
                }
            } else {
                parse((AddressParametersHeader) contact);
            }
            contactList.add((SIPHeader) contact);
            this.lexer.SPorHT();
            lookAhead = this.lexer.lookAhead(0);
            if (lookAhead != ',') {
                break;
            }
            this.lexer.match(44);
            this.lexer.SPorHT();
        }
        if (lookAhead != '\n' && lookAhead != 0) {
            throw createParseException("unexpected char");
        }
        return contactList;
    }

    public ContactParser(Lexer lexer) {
        super(lexer);
        this.lexer = lexer;
    }
}

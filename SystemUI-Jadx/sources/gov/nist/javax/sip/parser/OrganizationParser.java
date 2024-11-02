package gov.nist.javax.sip.parser;

import gov.nist.javax.sip.header.Organization;
import gov.nist.javax.sip.header.SIPHeader;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class OrganizationParser extends HeaderParser {
    public OrganizationParser(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.parser.HeaderParser
    public final SIPHeader parse() {
        Organization organization = new Organization();
        headerName(2093);
        organization.setHeaderName("Organization");
        this.lexer.SPorHT();
        organization.setOrganization(this.lexer.getRest().trim());
        return organization;
    }

    public OrganizationParser(Lexer lexer) {
        super(lexer);
    }
}

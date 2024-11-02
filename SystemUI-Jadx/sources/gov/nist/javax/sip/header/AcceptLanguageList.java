package gov.nist.javax.sip.header;

import javax.sip.header.Header;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class AcceptLanguageList extends SIPHeaderList<AcceptLanguage> {
    private static final long serialVersionUID = -3289606805203488840L;

    public AcceptLanguageList() {
        super(AcceptLanguage.class, "Accept-Language");
    }

    @Override // gov.nist.javax.sip.header.SIPHeaderList, gov.nist.core.GenericObject
    public final Object clone() {
        AcceptLanguageList acceptLanguageList = new AcceptLanguageList();
        acceptLanguageList.clonehlist(this.hlist);
        return acceptLanguageList;
    }

    @Override // gov.nist.javax.sip.header.SIPHeaderList
    public final Header getFirst() {
        AcceptLanguage acceptLanguage = (AcceptLanguage) super.getFirst();
        if (acceptLanguage == null) {
            return new AcceptLanguage();
        }
        return acceptLanguage;
    }
}

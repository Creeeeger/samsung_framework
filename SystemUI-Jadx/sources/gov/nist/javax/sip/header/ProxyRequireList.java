package gov.nist.javax.sip.header;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class ProxyRequireList extends SIPHeaderList<ProxyRequire> {
    private static final long serialVersionUID = 5648630649476486042L;

    public ProxyRequireList() {
        super(ProxyRequire.class, "Proxy-Require");
    }

    @Override // gov.nist.javax.sip.header.SIPHeaderList, gov.nist.core.GenericObject
    public final Object clone() {
        ProxyRequireList proxyRequireList = new ProxyRequireList();
        proxyRequireList.clonehlist(this.hlist);
        return proxyRequireList;
    }
}

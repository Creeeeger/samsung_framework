package gov.nist.javax.sip.header;

import java.util.ListIterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class RouteList extends SIPHeaderList<Route> {
    private static final long serialVersionUID = 3407603519354809748L;

    public RouteList() {
        super(Route.class, "Route");
    }

    @Override // gov.nist.javax.sip.header.SIPHeaderList, gov.nist.core.GenericObject
    public final Object clone() {
        RouteList routeList = new RouteList();
        routeList.clonehlist(this.hlist);
        return routeList;
    }

    @Override // gov.nist.javax.sip.header.SIPHeaderList, gov.nist.javax.sip.header.SIPHeader, gov.nist.core.GenericObject
    public final String encode() {
        if (this.hlist.isEmpty()) {
            return "";
        }
        return super.encode();
    }

    @Override // gov.nist.javax.sip.header.SIPHeaderList, gov.nist.javax.sip.header.SIPObject, gov.nist.core.GenericObject
    public final boolean equals(Object obj) {
        if (!(obj instanceof RouteList)) {
            return false;
        }
        RouteList routeList = (RouteList) obj;
        if (size() != routeList.size()) {
            return false;
        }
        ListIterator listIterator = listIterator();
        ListIterator listIterator2 = routeList.listIterator();
        while (listIterator.hasNext()) {
            if (!((Route) listIterator.next()).equals((Route) listIterator2.next())) {
                return false;
            }
        }
        return true;
    }
}

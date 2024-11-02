package gov.nist.javax.sip.header;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.ArrayLinkedVariables$$ExternalSyntheticOutline0;
import gov.nist.javax.sip.address.AddressImpl;
import javax.sip.header.HeaderAddress;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ReferTo extends AddressParametersHeader implements HeaderAddress {
    private static final long serialVersionUID = -1666700428440034851L;

    public ReferTo() {
        super("Refer-To");
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        String str;
        AddressImpl addressImpl = this.address;
        if (addressImpl == null) {
            return null;
        }
        if (addressImpl.getAddressType() == 2) {
            str = "<";
        } else {
            str = "";
        }
        StringBuilder m = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(str);
        m.append(this.address.encode());
        String sb = m.toString();
        if (this.address.getAddressType() == 2) {
            sb = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, ">");
        }
        if (!this.parameters.isEmpty()) {
            StringBuilder m2 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(sb, ";");
            m2.append(this.parameters.encode());
            return m2.toString();
        }
        return sb;
    }
}

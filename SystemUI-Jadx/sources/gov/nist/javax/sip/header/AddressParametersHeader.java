package gov.nist.javax.sip.header;

import gov.nist.javax.sip.address.AddressImpl;
import javax.sip.header.HeaderAddress;
import javax.sip.header.Parameters;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class AddressParametersHeader extends ParametersHeader {
    protected AddressImpl address;

    public AddressParametersHeader(String str) {
        super(str);
    }

    @Override // gov.nist.javax.sip.header.ParametersHeader, gov.nist.core.GenericObject
    public Object clone() {
        AddressParametersHeader addressParametersHeader = (AddressParametersHeader) super.clone();
        AddressImpl addressImpl = this.address;
        if (addressImpl != null) {
            addressParametersHeader.address = (AddressImpl) addressImpl.clone();
        }
        return addressParametersHeader;
    }

    @Override // gov.nist.javax.sip.header.SIPObject, gov.nist.core.GenericObject
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HeaderAddress) || !(obj instanceof Parameters)) {
            return false;
        }
        HeaderAddress headerAddress = (HeaderAddress) obj;
        if (getAddress().equals(headerAddress.getAddress()) && equalParameters((Parameters) headerAddress)) {
            return true;
        }
        return false;
    }

    public AddressImpl getAddress() {
        return this.address;
    }

    public void setAddress(AddressImpl addressImpl) {
        this.address = addressImpl;
    }

    public AddressParametersHeader(String str, boolean z) {
        super(str, z);
    }
}

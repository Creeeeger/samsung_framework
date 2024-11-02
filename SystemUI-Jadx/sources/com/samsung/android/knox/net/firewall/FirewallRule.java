package com.samsung.android.knox.net.firewall;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.samsung.android.knox.AppIdentity;
import com.samsung.android.knox.net.firewall.Firewall;
import java.security.InvalidParameterException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class FirewallRule implements Parcelable {
    public static final String ADDRESS = "address";
    public static final String ADDRESS_TYPE = "address type";
    public static final String APP_IDENTITY = "app identity";
    public static final Parcelable.Creator<FirewallRule> CREATOR = new Parcelable.Creator<FirewallRule>() { // from class: com.samsung.android.knox.net.firewall.FirewallRule.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirewallRule createFromParcel(Parcel parcel) {
            return new FirewallRule(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirewallRule[] newArray(int i) {
            return new FirewallRule[i];
        }

        @Override // android.os.Parcelable.Creator
        public final FirewallRule createFromParcel(Parcel parcel) {
            return new FirewallRule(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final FirewallRule[] newArray(int i) {
            return new FirewallRule[i];
        }
    };
    public static final String DIRECTION = "direction";
    public static final String IS_INVALID = " is invalid.";
    public static final String NETWORK_INTERFACE = "network interface";
    public static final String PACKAGE_NAME = "package name";
    public static final String PARAMETER = "Parameter: ";
    public static final String PORT_LOCATION = "port location";
    public static final String PORT_NUMBER = "port number";
    public static final String PROTOCOL = "protocol";
    public static final String RULE_TYPE = "rule type";
    public static final String TARGET_IP = "target IP";
    public static final String TARGET_PORT_NUMBER = "target port number";
    public static final String UNSUPPORTED_METHOD = "This method is not supported for this RuleType: ";
    public String mAddress;
    public Firewall.AddressType mAddressType;
    public AppIdentity mAppIdentity;
    public Firewall.Direction mDirection;
    public int mId;
    public Firewall.NetworkInterface mNetworkInterface;
    public int mPackageUid = -1;
    public Firewall.PortLocation mPortLocation;
    public String mPortNumber;
    public Firewall.Protocol mProtocol;
    public RuleType mRuleType;
    public Status mStatus;
    public String mStrNetworkInterface;
    public String mTargetIp;
    public String mTargetPortNumber;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.samsung.android.knox.net.firewall.FirewallRule$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType;

        static {
            int[] iArr = new int[RuleType.values().length];
            $SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType = iArr;
            try {
                iArr[RuleType.ALLOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType[RuleType.DENY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType[RuleType.REDIRECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType[RuleType.REDIRECT_EXCEPTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum RuleType {
        DENY,
        ALLOW,
        REDIRECT,
        REDIRECT_EXCEPTION
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum Status {
        DISABLED,
        ENABLED,
        PENDING
    }

    public FirewallRule(RuleType ruleType, Firewall.AddressType addressType) {
        if (ruleType == null) {
            throw new InvalidParameterException("Parameter: rule type is invalid.");
        }
        if (addressType != null) {
            this.mRuleType = ruleType;
            this.mStatus = Status.DISABLED;
            this.mAddressType = addressType;
            this.mAddress = "*";
            this.mPortNumber = "*";
            this.mAppIdentity = new AppIdentity("*", (String) null);
            this.mPortLocation = Firewall.PortLocation.ALL;
            this.mNetworkInterface = Firewall.NetworkInterface.ALL_NETWORKS;
            this.mDirection = Firewall.Direction.ALL;
            this.mProtocol = Firewall.Protocol.ALL;
            this.mTargetIp = null;
            this.mTargetPortNumber = null;
            this.mId = -1;
            this.mStrNetworkInterface = null;
            return;
        }
        throw new InvalidParameterException("Parameter: address type is invalid.");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:130:0x00fd, code lost:
    
        if (r3.equals(r5.mRuleType) != false) goto L88;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.knox.net.firewall.FirewallRule.equals(java.lang.Object):boolean");
    }

    public final Firewall.AddressType getAddressType() {
        return this.mAddressType;
    }

    public final AppIdentity getApplication() {
        return this.mAppIdentity;
    }

    public final Firewall.Direction getDirection() {
        if (!RuleType.ALLOW.equals(this.mRuleType) && !RuleType.DENY.equals(this.mRuleType)) {
            throw new UnsupportedOperationException(UNSUPPORTED_METHOD + this.mRuleType.toString());
        }
        return this.mDirection;
    }

    public final int getId() {
        return this.mId;
    }

    public final String getIpAddress() {
        return this.mAddress;
    }

    public final Firewall.NetworkInterface getNetworkInterface() {
        return this.mNetworkInterface;
    }

    public final String getPackageName() {
        return this.mAppIdentity.getPackageName();
    }

    public final int getPackageUid() {
        return this.mPackageUid;
    }

    public final Firewall.PortLocation getPortLocation() {
        if (!RuleType.ALLOW.equals(this.mRuleType) && !RuleType.DENY.equals(this.mRuleType)) {
            throw new UnsupportedOperationException(UNSUPPORTED_METHOD + this.mRuleType.toString());
        }
        return this.mPortLocation;
    }

    public final String getPortNumber() {
        return this.mPortNumber;
    }

    public final Firewall.Protocol getProtocol() {
        return this.mProtocol;
    }

    public final RuleType getRuleType() {
        return this.mRuleType;
    }

    public final Status getStatus() {
        return this.mStatus;
    }

    public final String getStrNetworkInterface() {
        return this.mStrNetworkInterface;
    }

    public final String getTargetIpAddress() {
        if (RuleType.REDIRECT.equals(this.mRuleType)) {
            return this.mTargetIp;
        }
        throw new UnsupportedOperationException(UNSUPPORTED_METHOD + this.mRuleType.toString());
    }

    public final String getTargetPortNumber() {
        if (RuleType.REDIRECT.equals(this.mRuleType)) {
            return this.mTargetPortNumber;
        }
        throw new UnsupportedOperationException(UNSUPPORTED_METHOD + this.mRuleType.toString());
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        int hashCode8;
        int hashCode9;
        int hashCode10;
        int hashCode11;
        int hashCode12;
        String str = this.mAddress;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (hashCode + 31) * 31;
        Firewall.AddressType addressType = this.mAddressType;
        if (addressType == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = addressType.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        Firewall.Direction direction = this.mDirection;
        if (direction == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = direction.hashCode();
        }
        int i4 = (((i3 + hashCode3) * 31) + this.mId) * 31;
        Firewall.NetworkInterface networkInterface = this.mNetworkInterface;
        if (networkInterface == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = networkInterface.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        AppIdentity appIdentity = this.mAppIdentity;
        if (appIdentity == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = appIdentity.hashCode();
        }
        int i6 = (i5 + hashCode5) * 31;
        Firewall.PortLocation portLocation = this.mPortLocation;
        if (portLocation == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = portLocation.hashCode();
        }
        int i7 = (i6 + hashCode6) * 31;
        String str2 = this.mPortNumber;
        if (str2 == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = str2.hashCode();
        }
        int i8 = (i7 + hashCode7) * 31;
        Firewall.Protocol protocol = this.mProtocol;
        if (protocol == null) {
            hashCode8 = 0;
        } else {
            hashCode8 = protocol.hashCode();
        }
        int i9 = (i8 + hashCode8) * 31;
        RuleType ruleType = this.mRuleType;
        if (ruleType == null) {
            hashCode9 = 0;
        } else {
            hashCode9 = ruleType.hashCode();
        }
        int i10 = (i9 + hashCode9) * 31;
        Status status = this.mStatus;
        if (status == null) {
            hashCode10 = 0;
        } else {
            hashCode10 = status.hashCode();
        }
        int i11 = (i10 + hashCode10) * 31;
        String str3 = this.mTargetIp;
        if (str3 == null) {
            hashCode11 = 0;
        } else {
            hashCode11 = str3.hashCode();
        }
        int i12 = (i11 + hashCode11) * 31;
        String str4 = this.mTargetPortNumber;
        if (str4 == null) {
            hashCode12 = 0;
        } else {
            hashCode12 = str4.hashCode();
        }
        int i13 = (i12 + hashCode12) * 31;
        String str5 = this.mStrNetworkInterface;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return i13 + i;
    }

    public final void setApplication(AppIdentity appIdentity) {
        if (appIdentity != null && FirewallRuleValidator.validatePackageName(appIdentity.getPackageName())) {
            this.mAppIdentity = appIdentity;
            return;
        }
        throw new InvalidParameterException("Parameter: app identity is invalid.");
    }

    public final void setDirection(Firewall.Direction direction) {
        if (direction != null) {
            if (!RuleType.ALLOW.equals(this.mRuleType) && !RuleType.DENY.equals(this.mRuleType)) {
                throw new UnsupportedOperationException(UNSUPPORTED_METHOD + this.mRuleType.toString());
            }
            this.mDirection = direction;
            return;
        }
        throw new InvalidParameterException("Parameter: direction is invalid.");
    }

    public final void setId(int i) {
        this.mId = i;
    }

    public final void setIpAddress(String str) {
        if (this.mAddressType.equals(Firewall.AddressType.IPV4)) {
            if (!FirewallRuleValidator.validadeIpv4Range(str) && !FirewallRuleValidator.validateIpv4Address(str) && !"*".equals(str)) {
                throw new InvalidParameterException("Parameter: address is invalid.");
            }
        } else if (this.mAddressType.equals(Firewall.AddressType.IPV6) && !FirewallRuleValidator.validadeIpv6Range(str) && !FirewallRuleValidator.validateIpv6Address(str) && !"*".equals(str)) {
            throw new InvalidParameterException("Parameter: address is invalid.");
        }
        this.mAddress = str;
    }

    public final void setNetworkInterface(Firewall.NetworkInterface networkInterface) {
        if (networkInterface != null) {
            this.mNetworkInterface = networkInterface;
            return;
        }
        throw new InvalidParameterException("Parameter: network interface is invalid.");
    }

    public final void setPackageName(String str) {
        if (!TextUtils.isEmpty(str) && FirewallRuleValidator.validatePackageName(str)) {
            this.mAppIdentity = new AppIdentity(str, (String) null);
            return;
        }
        throw new InvalidParameterException("Parameter: package name is invalid.");
    }

    public final void setPackageUid(int i) {
        this.mPackageUid = i;
    }

    public final void setPortLocation(Firewall.PortLocation portLocation) {
        if (portLocation != null) {
            if (!RuleType.ALLOW.equals(this.mRuleType) && !RuleType.DENY.equals(this.mRuleType)) {
                throw new UnsupportedOperationException(UNSUPPORTED_METHOD + this.mRuleType.toString());
            }
            this.mPortLocation = portLocation;
            return;
        }
        throw new InvalidParameterException("Parameter: port location is invalid.");
    }

    public final void setPortNumber(String str) {
        if (!FirewallRuleValidator.validatePortNumber(str) && !FirewallRuleValidator.validadePortNumberRange(str) && !"*".equals(str)) {
            throw new InvalidParameterException("Parameter: port number is invalid.");
        }
        this.mPortNumber = str;
    }

    public final void setProtocol(Firewall.Protocol protocol) {
        if (protocol != null) {
            this.mProtocol = protocol;
            return;
        }
        throw new InvalidParameterException("Parameter: protocol is invalid.");
    }

    public final void setStatus(Status status) {
        this.mStatus = status;
    }

    public final void setStrNetworkInterface(String str) {
        this.mStrNetworkInterface = str;
    }

    public final void setTargetIpAddress(String str) {
        if (RuleType.REDIRECT.equals(this.mRuleType)) {
            if (this.mAddressType.equals(Firewall.AddressType.IPV4)) {
                if (!FirewallRuleValidator.validateIpv4Address(str)) {
                    throw new InvalidParameterException("Parameter: target IP is invalid.");
                }
            } else if (!FirewallRuleValidator.validateIpv6Address(str)) {
                throw new InvalidParameterException("Parameter: target IP is invalid.");
            }
            this.mTargetIp = str;
            return;
        }
        throw new UnsupportedOperationException(UNSUPPORTED_METHOD + this.mRuleType.toString());
    }

    public final void setTargetPortNumber(String str) {
        if (RuleType.REDIRECT.equals(this.mRuleType)) {
            if (FirewallRuleValidator.validatePortNumber(str)) {
                this.mTargetPortNumber = str;
                return;
            }
            throw new InvalidParameterException("Parameter: target port number is invalid.");
        }
        throw new UnsupportedOperationException(UNSUPPORTED_METHOD + this.mRuleType.toString());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = AnonymousClass2.$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType[this.mRuleType.ordinal()];
        if (i != 1 && i != 2) {
            if (i != 3) {
                if (i == 4) {
                    sb.append("\nIP Address: " + this.mAddress);
                    sb.append("\nPort Number: " + this.mPortNumber);
                    sb.append("\nPackage Name: " + this.mAppIdentity.getPackageName());
                    sb.append("\nSignature: " + this.mAppIdentity.getSignature());
                    sb.append("\nProtocol: " + this.mProtocol + "\n");
                    sb.append("\nAddress Type: " + this.mAddressType + "\n");
                }
            } else {
                sb.append("\nSource IP Address: " + this.mAddress);
                sb.append("\nSource Port Number: " + this.mPortNumber);
                sb.append("\nTarget IP Address: " + getTargetIpAddress());
                sb.append("\nTarget Port Number: " + getTargetPortNumber());
                sb.append("\nPackage Name: " + this.mAppIdentity.getPackageName());
                sb.append("\nSignature: " + this.mAppIdentity.getSignature());
                if (!TextUtils.isEmpty(this.mStrNetworkInterface)) {
                    sb.append("\nNetwork Interface: " + this.mStrNetworkInterface);
                } else {
                    sb.append("\nNetwork Interface: " + this.mNetworkInterface);
                }
                sb.append("\nProtocol: " + this.mProtocol + "\n");
                sb.append("\nAddress Type: " + this.mAddressType + "\n");
            }
        } else {
            sb.append("\nIP Address: " + this.mAddress);
            sb.append("\nPort Number: " + this.mPortNumber);
            sb.append("\nPort Location: " + getPortLocation());
            sb.append("\nPackage Name: " + this.mAppIdentity.getPackageName());
            sb.append("\nSignature: " + this.mAppIdentity.getSignature());
            if (!TextUtils.isEmpty(this.mStrNetworkInterface)) {
                sb.append("\nNetwork Interface: " + this.mStrNetworkInterface);
            } else {
                sb.append("\nNetwork Interface: " + this.mNetworkInterface);
            }
            sb.append("\nDirection: " + getDirection());
            sb.append("\nProtocol: " + this.mProtocol);
            sb.append("\nAddress Type: " + this.mAddressType + "\n");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mId);
        parcel.writeSerializable(this.mRuleType);
        parcel.writeSerializable(this.mStatus);
        parcel.writeString(this.mAddress);
        parcel.writeString(this.mPortNumber);
        parcel.writeSerializable(this.mPortLocation);
        parcel.writeParcelable(this.mAppIdentity, i);
        parcel.writeSerializable(this.mNetworkInterface);
        parcel.writeSerializable(this.mDirection);
        parcel.writeSerializable(this.mProtocol);
        parcel.writeSerializable(this.mAddressType);
        parcel.writeString(this.mTargetIp);
        parcel.writeString(this.mTargetPortNumber);
        parcel.writeString(this.mStrNetworkInterface);
    }

    public FirewallRule(Parcel parcel) {
        this.mId = parcel.readInt();
        this.mRuleType = (RuleType) parcel.readSerializable();
        this.mStatus = (Status) parcel.readSerializable();
        this.mAddress = parcel.readString();
        this.mPortNumber = parcel.readString();
        this.mPortLocation = (Firewall.PortLocation) parcel.readSerializable();
        this.mAppIdentity = (AppIdentity) parcel.readParcelable(AppIdentity.class.getClassLoader());
        this.mNetworkInterface = (Firewall.NetworkInterface) parcel.readSerializable();
        this.mDirection = (Firewall.Direction) parcel.readSerializable();
        this.mProtocol = (Firewall.Protocol) parcel.readSerializable();
        this.mAddressType = (Firewall.AddressType) parcel.readSerializable();
        this.mTargetIp = parcel.readString();
        this.mTargetPortNumber = parcel.readString();
        this.mStrNetworkInterface = parcel.readString();
    }
}

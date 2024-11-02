package com.samsung.android.knox.accounts;

import android.os.Parcel;
import android.os.Parcelable;
import com.samsung.android.knox.ControlInfo;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AccountControlInfo extends ControlInfo {
    public static final Parcelable.Creator<AccountControlInfo> CREATOR = new Parcelable.Creator<AccountControlInfo>() { // from class: com.samsung.android.knox.accounts.AccountControlInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AccountControlInfo[] newArray(int i) {
            return new AccountControlInfo[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AccountControlInfo createFromParcel(Parcel parcel) {
            return new AccountControlInfo(parcel, 0);
        }

        @Override // android.os.Parcelable.Creator
        public final AccountControlInfo[] newArray(int i) {
            return new AccountControlInfo[i];
        }
    };

    public /* synthetic */ AccountControlInfo(Parcel parcel, int i) {
        this(parcel);
    }

    public AccountControlInfo() {
    }

    private AccountControlInfo(Parcel parcel) {
        readFromParcel(parcel);
    }
}

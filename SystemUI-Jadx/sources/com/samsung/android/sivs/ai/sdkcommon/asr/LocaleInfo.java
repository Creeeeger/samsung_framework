package com.samsung.android.sivs.ai.sdkcommon.asr;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import java.util.Locale;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class LocaleInfo implements Parcelable {
    public static final Parcelable.Creator<LocaleInfo> CREATOR = new Parcelable.Creator<LocaleInfo>() { // from class: com.samsung.android.sivs.ai.sdkcommon.asr.LocaleInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocaleInfo createFromParcel(Parcel parcel) {
            return new LocaleInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocaleInfo[] newArray(int i) {
            return new LocaleInfo[i];
        }
    };
    private final String mDisplayName;
    private final Locale mLocale;
    private final int mOrder;

    public LocaleInfo(Locale locale, String str, int i) {
        this.mLocale = locale;
        this.mDisplayName = str;
        this.mOrder = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof LocaleInfo) && this.mLocale == ((LocaleInfo) obj).mLocale) {
            return true;
        }
        return false;
    }

    public String getDisplayName() {
        return this.mDisplayName;
    }

    public Locale getLocale() {
        return this.mLocale;
    }

    public int getOrder() {
        return this.mOrder;
    }

    public int hashCode() {
        return Objects.hash(this.mLocale.toLanguageTag());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LocaleInfo{Locale=");
        sb.append(this.mLocale);
        sb.append(", DisplayName='");
        sb.append(this.mDisplayName);
        sb.append("', Order='");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.mOrder, "'}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.mLocale);
        parcel.writeString(this.mDisplayName);
        parcel.writeInt(this.mOrder);
    }

    public LocaleInfo(Parcel parcel) {
        this.mLocale = (Locale) parcel.readSerializable();
        this.mDisplayName = parcel.readString();
        this.mOrder = parcel.readInt();
    }
}

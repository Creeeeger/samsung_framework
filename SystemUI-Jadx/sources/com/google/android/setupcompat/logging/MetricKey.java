package com.google.android.setupcompat.logging;

import android.app.Activity;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.setupcompat.internal.Preconditions;
import com.google.android.setupcompat.internal.Validations;
import java.util.Arrays;
import java.util.regex.Pattern;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MetricKey implements Parcelable {
    public static final Parcelable.Creator<MetricKey> CREATOR = new Parcelable.Creator() { // from class: com.google.android.setupcompat.logging.MetricKey.1
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new MetricKey(parcel.readString(), parcel.readString(), 0);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new MetricKey[i];
        }
    };
    public static final Pattern METRIC_KEY_PATTERN = Pattern.compile("^[a-zA-Z][a-zA-Z0-9_]+");
    public final String name;
    public final String screenName;

    static {
        Pattern.compile("^([a-z]+[.])+[A-Z][a-zA-Z0-9]+");
        Pattern.compile("^[a-zA-Z][a-zA-Z0-9_]+");
    }

    public /* synthetic */ MetricKey(String str, String str2, int i) {
        this(str, str2);
    }

    public static Bundle fromMetricKey(MetricKey metricKey) {
        if (metricKey != null) {
            Bundle bundle = new Bundle();
            bundle.putInt("MetricKey_version", 1);
            bundle.putString("MetricKey_name", metricKey.name);
            bundle.putString("MetricKey_screenName", metricKey.screenName);
            return bundle;
        }
        throw new NullPointerException("MetricKey cannot be null.");
    }

    public static MetricKey get(String str, Activity activity) {
        String className = activity.getComponentName().getClassName();
        Validations.assertLengthInRange(5, 30, str, "MetricKey.name");
        Preconditions.checkArgument("Invalid MetricKey, only alpha numeric characters are allowed.", METRIC_KEY_PATTERN.matcher(str).matches());
        return new MetricKey(str, className);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MetricKey)) {
            return false;
        }
        MetricKey metricKey = (MetricKey) obj;
        String str = this.name;
        String str2 = metricKey.name;
        if (str != str2 && (str == null || !str.equals(str2))) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            String str3 = this.screenName;
            String str4 = metricKey.screenName;
            if (str3 != str4 && (str3 == null || !str3.equals(str4))) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, this.screenName});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeString(this.screenName);
    }

    private MetricKey(String str, String str2) {
        this.name = str;
        this.screenName = str2;
    }
}

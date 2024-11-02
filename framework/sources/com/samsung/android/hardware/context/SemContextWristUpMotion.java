package com.samsung.android.hardware.context;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

@Deprecated
/* loaded from: classes5.dex */
public class SemContextWristUpMotion extends SemContextEventContext {
    public static final Parcelable.Creator<SemContextWristUpMotion> CREATOR = new Parcelable.Creator<SemContextWristUpMotion>() { // from class: com.samsung.android.hardware.context.SemContextWristUpMotion.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SemContextWristUpMotion createFromParcel(Parcel in) {
            return new SemContextWristUpMotion(in);
        }

        @Override // android.os.Parcelable.Creator
        public SemContextWristUpMotion[] newArray(int size) {
            return new SemContextWristUpMotion[size];
        }
    };

    @Deprecated
    public static final int NONE = 0;

    @Deprecated
    public static final int NORMAL = 1;
    private Bundle mContext;

    /* renamed from: com.samsung.android.hardware.context.SemContextWristUpMotion$1 */
    /* loaded from: classes5.dex */
    class AnonymousClass1 implements Parcelable.Creator<SemContextWristUpMotion> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SemContextWristUpMotion createFromParcel(Parcel in) {
            return new SemContextWristUpMotion(in);
        }

        @Override // android.os.Parcelable.Creator
        public SemContextWristUpMotion[] newArray(int size) {
            return new SemContextWristUpMotion[size];
        }
    }

    public SemContextWristUpMotion() {
        this.mContext = new Bundle();
    }

    SemContextWristUpMotion(Parcel src) {
        readFromParcel(src);
    }

    public int getAction() {
        return this.mContext.getInt("Action");
    }

    @Override // com.samsung.android.hardware.context.SemContextEventContext
    public void setValues(Bundle context) {
        this.mContext = context;
    }

    @Override // com.samsung.android.hardware.context.SemContextEventContext, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeBundle(this.mContext);
    }

    private void readFromParcel(Parcel src) {
        this.mContext = src.readBundle(getClass().getClassLoader());
    }
}

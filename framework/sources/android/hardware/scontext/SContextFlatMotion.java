package android.hardware.scontext;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

@Deprecated
/* loaded from: classes2.dex */
public class SContextFlatMotion extends SContextEventContext {
    public static final Parcelable.Creator<SContextFlatMotion> CREATOR = new Parcelable.Creator<SContextFlatMotion>() { // from class: android.hardware.scontext.SContextFlatMotion.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SContextFlatMotion createFromParcel(Parcel in) {
            return new SContextFlatMotion(in);
        }

        @Override // android.os.Parcelable.Creator
        public SContextFlatMotion[] newArray(int size) {
            return new SContextFlatMotion[size];
        }
    };
    private Bundle mContext;

    public SContextFlatMotion() {
        this.mContext = new Bundle();
    }

    SContextFlatMotion(Parcel src) {
        readFromParcel(src);
    }

    public int getAction() {
        return this.mContext.getInt("Action");
    }

    @Override // android.hardware.scontext.SContextEventContext, com.samsung.android.hardware.context.SemContextEventContext
    public void setValues(Bundle context) {
        this.mContext = context;
    }

    @Override // com.samsung.android.hardware.context.SemContextEventContext, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeBundle(this.mContext);
    }

    private void readFromParcel(Parcel src) {
        this.mContext = src.readBundle();
    }

    /* renamed from: android.hardware.scontext.SContextFlatMotion$1 */
    /* loaded from: classes2.dex */
    class AnonymousClass1 implements Parcelable.Creator<SContextFlatMotion> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SContextFlatMotion createFromParcel(Parcel in) {
            return new SContextFlatMotion(in);
        }

        @Override // android.os.Parcelable.Creator
        public SContextFlatMotion[] newArray(int size) {
            return new SContextFlatMotion[size];
        }
    }
}

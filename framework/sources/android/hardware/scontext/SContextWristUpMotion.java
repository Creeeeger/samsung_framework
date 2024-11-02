package android.hardware.scontext;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

@Deprecated
/* loaded from: classes2.dex */
public class SContextWristUpMotion extends SContextEventContext {
    public static final Parcelable.Creator<SContextWristUpMotion> CREATOR = new Parcelable.Creator<SContextWristUpMotion>() { // from class: android.hardware.scontext.SContextWristUpMotion.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SContextWristUpMotion createFromParcel(Parcel in) {
            return new SContextWristUpMotion(in);
        }

        @Override // android.os.Parcelable.Creator
        public SContextWristUpMotion[] newArray(int size) {
            return new SContextWristUpMotion[size];
        }
    };
    private Bundle mContext;

    public SContextWristUpMotion() {
        this.mContext = new Bundle();
    }

    SContextWristUpMotion(Parcel src) {
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

    /* renamed from: android.hardware.scontext.SContextWristUpMotion$1 */
    /* loaded from: classes2.dex */
    class AnonymousClass1 implements Parcelable.Creator<SContextWristUpMotion> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SContextWristUpMotion createFromParcel(Parcel in) {
            return new SContextWristUpMotion(in);
        }

        @Override // android.os.Parcelable.Creator
        public SContextWristUpMotion[] newArray(int size) {
            return new SContextWristUpMotion[size];
        }
    }
}

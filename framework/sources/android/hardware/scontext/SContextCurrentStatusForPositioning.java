package android.hardware.scontext;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

@Deprecated
/* loaded from: classes2.dex */
public class SContextCurrentStatusForPositioning extends SContextEventContext {
    public static final Parcelable.Creator<SContextCurrentStatusForPositioning> CREATOR = new Parcelable.Creator<SContextCurrentStatusForPositioning>() { // from class: android.hardware.scontext.SContextCurrentStatusForPositioning.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SContextCurrentStatusForPositioning createFromParcel(Parcel in) {
            return new SContextCurrentStatusForPositioning(in);
        }

        @Override // android.os.Parcelable.Creator
        public SContextCurrentStatusForPositioning[] newArray(int size) {
            return new SContextCurrentStatusForPositioning[size];
        }
    };
    private Bundle mContext;

    public SContextCurrentStatusForPositioning() {
        this.mContext = new Bundle();
    }

    SContextCurrentStatusForPositioning(Parcel src) {
        readFromParcel(src);
    }

    public int getStatus() {
        return this.mContext.getInt("Status");
    }

    @Override // com.samsung.android.hardware.context.SemContextEventContext, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeBundle(this.mContext);
    }

    private void readFromParcel(Parcel src) {
        this.mContext = src.readBundle();
    }

    /* renamed from: android.hardware.scontext.SContextCurrentStatusForPositioning$1 */
    /* loaded from: classes2.dex */
    class AnonymousClass1 implements Parcelable.Creator<SContextCurrentStatusForPositioning> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SContextCurrentStatusForPositioning createFromParcel(Parcel in) {
            return new SContextCurrentStatusForPositioning(in);
        }

        @Override // android.os.Parcelable.Creator
        public SContextCurrentStatusForPositioning[] newArray(int size) {
            return new SContextCurrentStatusForPositioning[size];
        }
    }
}

package android.hardware.scontext;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

@Deprecated
/* loaded from: classes2.dex */
public class SContextActiveTimeMonitor extends SContextEventContext {
    public static final Parcelable.Creator<SContextActiveTimeMonitor> CREATOR = new Parcelable.Creator<SContextActiveTimeMonitor>() { // from class: android.hardware.scontext.SContextActiveTimeMonitor.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SContextActiveTimeMonitor createFromParcel(Parcel in) {
            return new SContextActiveTimeMonitor(in);
        }

        @Override // android.os.Parcelable.Creator
        public SContextActiveTimeMonitor[] newArray(int size) {
            return new SContextActiveTimeMonitor[size];
        }
    };
    private Bundle mContext;

    public SContextActiveTimeMonitor() {
        this.mContext = new Bundle();
    }

    SContextActiveTimeMonitor(Parcel src) {
        readFromParcel(src);
    }

    public int getDuration() {
        return this.mContext.getInt("ActiveTimeDuration");
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

    /* renamed from: android.hardware.scontext.SContextActiveTimeMonitor$1 */
    /* loaded from: classes2.dex */
    class AnonymousClass1 implements Parcelable.Creator<SContextActiveTimeMonitor> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SContextActiveTimeMonitor createFromParcel(Parcel in) {
            return new SContextActiveTimeMonitor(in);
        }

        @Override // android.os.Parcelable.Creator
        public SContextActiveTimeMonitor[] newArray(int size) {
            return new SContextActiveTimeMonitor[size];
        }
    }
}

package android.view.inputmethod;

import android.graphics.PointF;
import android.os.CancellationSignal;
import android.os.CancellationSignalBeamer;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* loaded from: classes4.dex */
public final class InsertModeGesture extends CancellableHandwritingGesture implements Parcelable {
    public static final Parcelable.Creator<InsertModeGesture> CREATOR = new Parcelable.Creator<InsertModeGesture>() { // from class: android.view.inputmethod.InsertModeGesture.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public InsertModeGesture createFromParcel(Parcel source) {
            return new InsertModeGesture(source);
        }

        @Override // android.os.Parcelable.Creator
        public InsertModeGesture[] newArray(int size) {
            return new InsertModeGesture[size];
        }
    };
    private PointF mPoint;

    /* synthetic */ InsertModeGesture(PointF pointF, String str, CancellationSignal cancellationSignal, InsertModeGestureIA insertModeGestureIA) {
        this(pointF, str, cancellationSignal);
    }

    /* synthetic */ InsertModeGesture(Parcel parcel, InsertModeGestureIA insertModeGestureIA) {
        this(parcel);
    }

    private InsertModeGesture(PointF point, String fallbackText, CancellationSignal cancellationSignal) {
        this.mType = 128;
        this.mPoint = point;
        this.mFallbackText = fallbackText;
        this.mCancellationSignal = cancellationSignal;
    }

    private InsertModeGesture(Parcel source) {
        this.mType = 128;
        this.mFallbackText = source.readString8();
        this.mPoint = (PointF) source.readTypedObject(PointF.CREATOR);
        this.mCancellationSignalToken = source.readStrongBinder();
    }

    @Override // android.view.inputmethod.CancellableHandwritingGesture
    public CancellationSignal getCancellationSignal() {
        return this.mCancellationSignal;
    }

    public PointF getInsertionPoint() {
        return this.mPoint;
    }

    /* loaded from: classes4.dex */
    public static final class Builder {
        private CancellationSignal mCancellationSignal;
        private String mFallbackText;
        private PointF mPoint;

        public Builder setInsertionPoint(PointF point) {
            this.mPoint = point;
            return this;
        }

        public Builder setCancellationSignal(CancellationSignal cancellationSignal) {
            this.mCancellationSignal = cancellationSignal;
            return this;
        }

        public Builder setFallbackText(String fallbackText) {
            this.mFallbackText = fallbackText;
            return this;
        }

        public InsertModeGesture build() {
            if (this.mPoint == null) {
                throw new IllegalArgumentException("Insertion point must be set.");
            }
            if (this.mCancellationSignal == null) {
                throw new IllegalArgumentException("CancellationSignal must be set.");
            }
            return new InsertModeGesture(this.mPoint, this.mFallbackText, this.mCancellationSignal);
        }
    }

    /* renamed from: android.view.inputmethod.InsertModeGesture$1 */
    /* loaded from: classes4.dex */
    class AnonymousClass1 implements Parcelable.Creator<InsertModeGesture> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public InsertModeGesture createFromParcel(Parcel source) {
            return new InsertModeGesture(source);
        }

        @Override // android.os.Parcelable.Creator
        public InsertModeGesture[] newArray(int size) {
            return new InsertModeGesture[size];
        }
    }

    public int hashCode() {
        return Objects.hash(this.mPoint, this.mFallbackText);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof InsertModeGesture)) {
            return false;
        }
        InsertModeGesture that = (InsertModeGesture) o;
        if (Objects.equals(this.mFallbackText, that.mFallbackText)) {
            return Objects.equals(this.mPoint, that.mPoint);
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString8(this.mFallbackText);
        dest.writeTypedObject(this.mPoint, flags);
        dest.writeStrongBinder(CancellationSignalBeamer.Sender.beamFromScope(this.mCancellationSignal));
    }
}

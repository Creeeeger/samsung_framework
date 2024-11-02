package android.telephony.ims;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

@SystemApi
/* loaded from: classes3.dex */
public final class FeatureTagState implements Parcelable {
    public static final Parcelable.Creator<FeatureTagState> CREATOR = new Parcelable.Creator<FeatureTagState>() { // from class: android.telephony.ims.FeatureTagState.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public FeatureTagState createFromParcel(Parcel source) {
            return new FeatureTagState(source);
        }

        @Override // android.os.Parcelable.Creator
        public FeatureTagState[] newArray(int size) {
            return new FeatureTagState[size];
        }
    };
    private final String mFeatureTag;
    private final int mState;

    /* synthetic */ FeatureTagState(Parcel parcel, FeatureTagStateIA featureTagStateIA) {
        this(parcel);
    }

    public FeatureTagState(String featureTag, int state) {
        this.mFeatureTag = featureTag;
        this.mState = state;
    }

    private FeatureTagState(Parcel source) {
        this.mFeatureTag = source.readString();
        this.mState = source.readInt();
    }

    public String getFeatureTag() {
        return this.mFeatureTag;
    }

    public int getState() {
        return this.mState;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.mFeatureTag);
        dest.writeInt(this.mState);
    }

    /* renamed from: android.telephony.ims.FeatureTagState$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<FeatureTagState> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public FeatureTagState createFromParcel(Parcel source) {
            return new FeatureTagState(source);
        }

        @Override // android.os.Parcelable.Creator
        public FeatureTagState[] newArray(int size) {
            return new FeatureTagState[size];
        }
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        FeatureTagState that = (FeatureTagState) o;
        if (this.mState == that.mState && this.mFeatureTag.equals(that.mFeatureTag)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.mFeatureTag, Integer.valueOf(this.mState));
    }

    public String toString() {
        return "FeatureTagState{mFeatureTag='" + this.mFeatureTag + ", mState=" + this.mState + '}';
    }
}

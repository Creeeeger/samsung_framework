package android.credentials.ui;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class DisabledProviderData extends ProviderData implements Parcelable {
    public static final Parcelable.Creator<DisabledProviderData> CREATOR = new Parcelable.Creator<DisabledProviderData>() { // from class: android.credentials.ui.DisabledProviderData.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public DisabledProviderData createFromParcel(Parcel in) {
            return new DisabledProviderData(in);
        }

        @Override // android.os.Parcelable.Creator
        public DisabledProviderData[] newArray(int size) {
            return new DisabledProviderData[size];
        }
    };

    /* synthetic */ DisabledProviderData(Parcel parcel, DisabledProviderDataIA disabledProviderDataIA) {
        this(parcel);
    }

    public DisabledProviderData(String providerFlattenedComponentName) {
        super(providerFlattenedComponentName);
    }

    private DisabledProviderData(Parcel in) {
        super(in);
    }

    @Override // android.credentials.ui.ProviderData, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
    }

    @Override // android.credentials.ui.ProviderData, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: android.credentials.ui.DisabledProviderData$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<DisabledProviderData> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public DisabledProviderData createFromParcel(Parcel in) {
            return new DisabledProviderData(in);
        }

        @Override // android.os.Parcelable.Creator
        public DisabledProviderData[] newArray(int size) {
            return new DisabledProviderData[size];
        }
    }
}

package android.service.credentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;

/* loaded from: classes3.dex */
public final class BeginCreateCredentialRequest implements Parcelable {
    public static final Parcelable.Creator<BeginCreateCredentialRequest> CREATOR = new Parcelable.Creator<BeginCreateCredentialRequest>() { // from class: android.service.credentials.BeginCreateCredentialRequest.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public BeginCreateCredentialRequest createFromParcel(Parcel in) {
            return new BeginCreateCredentialRequest(in);
        }

        @Override // android.os.Parcelable.Creator
        public BeginCreateCredentialRequest[] newArray(int size) {
            return new BeginCreateCredentialRequest[size];
        }
    };
    private final CallingAppInfo mCallingAppInfo;
    private final Bundle mData;
    private final String mType;

    /* synthetic */ BeginCreateCredentialRequest(Parcel parcel, BeginCreateCredentialRequestIA beginCreateCredentialRequestIA) {
        this(parcel);
    }

    public BeginCreateCredentialRequest(String type, Bundle data, CallingAppInfo callingAppInfo) {
        this.mType = (String) Preconditions.checkStringNotEmpty(type, "type must not be null or empty");
        Bundle dataCopy = new Bundle();
        dataCopy.putAll(data);
        this.mData = dataCopy;
        this.mCallingAppInfo = callingAppInfo;
    }

    public BeginCreateCredentialRequest(String type, Bundle data) {
        this(type, data, null);
    }

    private BeginCreateCredentialRequest(Parcel in) {
        this.mCallingAppInfo = (CallingAppInfo) in.readTypedObject(CallingAppInfo.CREATOR);
        this.mType = in.readString8();
        this.mData = in.readBundle(Bundle.class.getClassLoader());
    }

    /* renamed from: android.service.credentials.BeginCreateCredentialRequest$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<BeginCreateCredentialRequest> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public BeginCreateCredentialRequest createFromParcel(Parcel in) {
            return new BeginCreateCredentialRequest(in);
        }

        @Override // android.os.Parcelable.Creator
        public BeginCreateCredentialRequest[] newArray(int size) {
            return new BeginCreateCredentialRequest[size];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeTypedObject(this.mCallingAppInfo, flags);
        dest.writeString8(this.mType);
        dest.writeBundle(this.mData);
    }

    public CallingAppInfo getCallingAppInfo() {
        return this.mCallingAppInfo;
    }

    public String getType() {
        return this.mType;
    }

    public Bundle getData() {
        return this.mData;
    }
}

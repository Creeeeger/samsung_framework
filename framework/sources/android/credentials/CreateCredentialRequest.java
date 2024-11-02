package android.credentials;

import android.annotation.NonNull;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.AnnotationValidations;
import com.android.internal.util.Preconditions;
import java.util.Objects;

/* loaded from: classes.dex */
public final class CreateCredentialRequest implements Parcelable {
    public static final Parcelable.Creator<CreateCredentialRequest> CREATOR = new Parcelable.Creator<CreateCredentialRequest>() { // from class: android.credentials.CreateCredentialRequest.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public CreateCredentialRequest[] newArray(int size) {
            return new CreateCredentialRequest[size];
        }

        @Override // android.os.Parcelable.Creator
        public CreateCredentialRequest createFromParcel(Parcel in) {
            return new CreateCredentialRequest(in);
        }
    };
    private final boolean mAlwaysSendAppInfoToProvider;
    private final Bundle mCandidateQueryData;
    private final Bundle mCredentialData;
    private final boolean mIsSystemProviderRequired;
    private final String mOrigin;
    private final String mType;

    /* synthetic */ CreateCredentialRequest(Parcel parcel, CreateCredentialRequestIA createCredentialRequestIA) {
        this(parcel);
    }

    /* synthetic */ CreateCredentialRequest(String str, Bundle bundle, Bundle bundle2, boolean z, boolean z2, String str2, CreateCredentialRequestIA createCredentialRequestIA) {
        this(str, bundle, bundle2, z, z2, str2);
    }

    public String getType() {
        return this.mType;
    }

    public Bundle getCredentialData() {
        return this.mCredentialData;
    }

    public Bundle getCandidateQueryData() {
        return this.mCandidateQueryData;
    }

    public boolean isSystemProviderRequired() {
        return this.mIsSystemProviderRequired;
    }

    public boolean alwaysSendAppInfoToProvider() {
        return this.mAlwaysSendAppInfoToProvider;
    }

    public String getOrigin() {
        return this.mOrigin;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString8(this.mType);
        dest.writeBundle(this.mCredentialData);
        dest.writeBundle(this.mCandidateQueryData);
        dest.writeBoolean(this.mIsSystemProviderRequired);
        dest.writeBoolean(this.mAlwaysSendAppInfoToProvider);
        dest.writeString8(this.mOrigin);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "CreateCredentialRequest {type=" + this.mType + ", credentialData=" + this.mCredentialData + ", candidateQueryData=" + this.mCandidateQueryData + ", isSystemProviderRequired=" + this.mIsSystemProviderRequired + ", alwaysSendAppInfoToProvider=" + this.mAlwaysSendAppInfoToProvider + ", origin=" + this.mOrigin + "}";
    }

    private CreateCredentialRequest(String type, Bundle credentialData, Bundle candidateQueryData, boolean isSystemProviderRequired, boolean alwaysSendAppInfoToProvider, String origin) {
        this.mType = (String) Preconditions.checkStringNotEmpty(type, "type must not be empty");
        this.mCredentialData = (Bundle) Objects.requireNonNull(credentialData, "credentialData must not be null");
        this.mCandidateQueryData = (Bundle) Objects.requireNonNull(candidateQueryData, "candidateQueryData must not be null");
        this.mIsSystemProviderRequired = isSystemProviderRequired;
        this.mAlwaysSendAppInfoToProvider = alwaysSendAppInfoToProvider;
        this.mOrigin = origin;
    }

    private CreateCredentialRequest(Parcel in) {
        String type = in.readString8();
        Bundle credentialData = in.readBundle();
        Bundle candidateQueryData = in.readBundle();
        boolean isSystemProviderRequired = in.readBoolean();
        boolean alwaysSendAppInfoToProvider = in.readBoolean();
        this.mOrigin = in.readString8();
        this.mType = type;
        AnnotationValidations.validate((Class<NonNull>) NonNull.class, (NonNull) null, (Object) type);
        this.mCredentialData = credentialData;
        AnnotationValidations.validate((Class<NonNull>) NonNull.class, (NonNull) null, (Object) credentialData);
        this.mCandidateQueryData = candidateQueryData;
        AnnotationValidations.validate((Class<NonNull>) NonNull.class, (NonNull) null, (Object) candidateQueryData);
        this.mIsSystemProviderRequired = isSystemProviderRequired;
        this.mAlwaysSendAppInfoToProvider = alwaysSendAppInfoToProvider;
    }

    /* renamed from: android.credentials.CreateCredentialRequest$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<CreateCredentialRequest> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public CreateCredentialRequest[] newArray(int size) {
            return new CreateCredentialRequest[size];
        }

        @Override // android.os.Parcelable.Creator
        public CreateCredentialRequest createFromParcel(Parcel in) {
            return new CreateCredentialRequest(in);
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private boolean mAlwaysSendAppInfoToProvider = true;
        private final Bundle mCandidateQueryData;
        private final Bundle mCredentialData;
        private boolean mIsSystemProviderRequired;
        private String mOrigin;
        private String mType;

        public Builder(String type, Bundle credentialData, Bundle candidateQueryData) {
            this.mType = (String) Preconditions.checkStringNotEmpty(type, "type must not be null or empty");
            this.mCredentialData = (Bundle) Objects.requireNonNull(credentialData, "credentialData must not be null");
            this.mCandidateQueryData = (Bundle) Objects.requireNonNull(candidateQueryData, "candidateQueryData must not be null");
        }

        public Builder setAlwaysSendAppInfoToProvider(boolean value) {
            this.mAlwaysSendAppInfoToProvider = value;
            return this;
        }

        public Builder setIsSystemProviderRequired(boolean value) {
            this.mIsSystemProviderRequired = value;
            return this;
        }

        public Builder setOrigin(String origin) {
            this.mOrigin = origin;
            return this;
        }

        public CreateCredentialRequest build() {
            Preconditions.checkStringNotEmpty(this.mType, "type must not be empty");
            return new CreateCredentialRequest(this.mType, this.mCredentialData, this.mCandidateQueryData, this.mIsSystemProviderRequired, this.mAlwaysSendAppInfoToProvider, this.mOrigin);
        }
    }
}

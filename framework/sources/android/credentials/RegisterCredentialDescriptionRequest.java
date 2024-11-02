package android.credentials;

import android.annotation.NonNull;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.AnnotationValidations;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class RegisterCredentialDescriptionRequest implements Parcelable {
    public static final Parcelable.Creator<RegisterCredentialDescriptionRequest> CREATOR = new Parcelable.Creator<RegisterCredentialDescriptionRequest>() { // from class: android.credentials.RegisterCredentialDescriptionRequest.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public RegisterCredentialDescriptionRequest createFromParcel(Parcel in) {
            return new RegisterCredentialDescriptionRequest(in);
        }

        @Override // android.os.Parcelable.Creator
        public RegisterCredentialDescriptionRequest[] newArray(int size) {
            return new RegisterCredentialDescriptionRequest[size];
        }
    };
    private final List<CredentialDescription> mCredentialDescriptions;

    /* synthetic */ RegisterCredentialDescriptionRequest(Parcel parcel, RegisterCredentialDescriptionRequestIA registerCredentialDescriptionRequestIA) {
        this(parcel);
    }

    public RegisterCredentialDescriptionRequest(CredentialDescription credentialDescription) {
        this.mCredentialDescriptions = Arrays.asList((CredentialDescription) Objects.requireNonNull(credentialDescription));
    }

    public RegisterCredentialDescriptionRequest(Set<CredentialDescription> credentialDescriptions) {
        this.mCredentialDescriptions = new ArrayList((Collection) Objects.requireNonNull(credentialDescriptions));
    }

    private RegisterCredentialDescriptionRequest(Parcel in) {
        ArrayList arrayList = new ArrayList();
        in.readTypedList(arrayList, CredentialDescription.CREATOR);
        ArrayList arrayList2 = new ArrayList();
        this.mCredentialDescriptions = arrayList2;
        AnnotationValidations.validate((Class<NonNull>) NonNull.class, (NonNull) null, (Object) arrayList);
        arrayList2.addAll(arrayList);
    }

    /* renamed from: android.credentials.RegisterCredentialDescriptionRequest$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<RegisterCredentialDescriptionRequest> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public RegisterCredentialDescriptionRequest createFromParcel(Parcel in) {
            return new RegisterCredentialDescriptionRequest(in);
        }

        @Override // android.os.Parcelable.Creator
        public RegisterCredentialDescriptionRequest[] newArray(int size) {
            return new RegisterCredentialDescriptionRequest[size];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeTypedList(this.mCredentialDescriptions, flags);
    }

    public Set<CredentialDescription> getCredentialDescriptions() {
        return new HashSet(this.mCredentialDescriptions);
    }
}

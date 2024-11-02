package android.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ListEnabledProvidersResponse implements Parcelable {
    public static final Parcelable.Creator<ListEnabledProvidersResponse> CREATOR = new Parcelable.Creator<ListEnabledProvidersResponse>() { // from class: android.credentials.ListEnabledProvidersResponse.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public ListEnabledProvidersResponse createFromParcel(Parcel in) {
            return new ListEnabledProvidersResponse(in);
        }

        @Override // android.os.Parcelable.Creator
        public ListEnabledProvidersResponse[] newArray(int size) {
            return new ListEnabledProvidersResponse[size];
        }
    };
    private final List<String> mProviders;

    /* synthetic */ ListEnabledProvidersResponse(Parcel parcel, ListEnabledProvidersResponseIA listEnabledProvidersResponseIA) {
        this(parcel);
    }

    public static ListEnabledProvidersResponse create(List<String> providers) {
        Objects.requireNonNull(providers, "providers must not be null");
        Preconditions.checkCollectionElementsNotNull(providers, "providers");
        return new ListEnabledProvidersResponse(providers);
    }

    private ListEnabledProvidersResponse(List<String> providers) {
        this.mProviders = providers;
    }

    private ListEnabledProvidersResponse(Parcel in) {
        this.mProviders = in.createStringArrayList();
    }

    /* renamed from: android.credentials.ListEnabledProvidersResponse$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<ListEnabledProvidersResponse> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public ListEnabledProvidersResponse createFromParcel(Parcel in) {
            return new ListEnabledProvidersResponse(in);
        }

        @Override // android.os.Parcelable.Creator
        public ListEnabledProvidersResponse[] newArray(int size) {
            return new ListEnabledProvidersResponse[size];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeStringList(this.mProviders);
    }

    public List<String> getProviderComponentNames() {
        return this.mProviders;
    }
}

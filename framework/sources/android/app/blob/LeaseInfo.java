package android.app.blob;

import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public final class LeaseInfo implements Parcelable {
    public static final Parcelable.Creator<LeaseInfo> CREATOR = new Parcelable.Creator<LeaseInfo>() { // from class: android.app.blob.LeaseInfo.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public LeaseInfo createFromParcel(Parcel source) {
            return new LeaseInfo(source);
        }

        @Override // android.os.Parcelable.Creator
        public LeaseInfo[] newArray(int size) {
            return new LeaseInfo[size];
        }
    };
    private final CharSequence mDescription;
    private final int mDescriptionResId;
    private final long mExpiryTimeMillis;
    private final String mPackageName;

    /* synthetic */ LeaseInfo(Parcel parcel, LeaseInfoIA leaseInfoIA) {
        this(parcel);
    }

    public LeaseInfo(String packageName, long expiryTimeMs, int descriptionResId, CharSequence description) {
        this.mPackageName = packageName;
        this.mExpiryTimeMillis = expiryTimeMs;
        this.mDescriptionResId = descriptionResId;
        this.mDescription = description;
    }

    private LeaseInfo(Parcel in) {
        this.mPackageName = in.readString();
        this.mExpiryTimeMillis = in.readLong();
        this.mDescriptionResId = in.readInt();
        this.mDescription = in.readCharSequence();
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public long getExpiryTimeMillis() {
        return this.mExpiryTimeMillis;
    }

    public int getDescriptionResId() {
        return this.mDescriptionResId;
    }

    public CharSequence getDescription() {
        return this.mDescription;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.mPackageName);
        dest.writeLong(this.mExpiryTimeMillis);
        dest.writeInt(this.mDescriptionResId);
        dest.writeCharSequence(this.mDescription);
    }

    public String toString() {
        return "LeaseInfo {package: " + this.mPackageName + ",expiryMs: " + this.mExpiryTimeMillis + ",descriptionResId: " + this.mDescriptionResId + ",description: " + ((Object) this.mDescription) + ",}";
    }

    private String toShortString() {
        return this.mPackageName;
    }

    public static String toShortString(List<LeaseInfo> leaseInfos) {
        StringBuilder sb = new StringBuilder();
        sb.append(NavigationBarInflaterView.SIZE_MOD_START);
        int size = leaseInfos.size();
        for (int i = 0; i < size; i++) {
            sb.append(leaseInfos.get(i).toShortString());
            sb.append(",");
        }
        sb.append(NavigationBarInflaterView.SIZE_MOD_END);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: android.app.blob.LeaseInfo$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<LeaseInfo> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public LeaseInfo createFromParcel(Parcel source) {
            return new LeaseInfo(source);
        }

        @Override // android.os.Parcelable.Creator
        public LeaseInfo[] newArray(int size) {
            return new LeaseInfo[size];
        }
    }
}

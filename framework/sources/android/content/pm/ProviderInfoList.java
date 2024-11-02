package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ProviderInfoList implements Parcelable {
    public static final Parcelable.Creator<ProviderInfoList> CREATOR = new Parcelable.Creator<ProviderInfoList>() { // from class: android.content.pm.ProviderInfoList.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public ProviderInfoList createFromParcel(Parcel source) {
            return new ProviderInfoList(source);
        }

        @Override // android.os.Parcelable.Creator
        public ProviderInfoList[] newArray(int size) {
            return new ProviderInfoList[size];
        }
    };
    private final List<ProviderInfo> mList;

    /* synthetic */ ProviderInfoList(Parcel parcel, ProviderInfoListIA providerInfoListIA) {
        this(parcel);
    }

    private ProviderInfoList(Parcel source) {
        ArrayList<ProviderInfo> list = new ArrayList<>();
        source.readTypedList(list, ProviderInfo.CREATOR);
        this.mList = list;
    }

    private ProviderInfoList(List<ProviderInfo> list) {
        this.mList = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        boolean prevAllowSquashing = dest.allowSquashing();
        dest.writeTypedList(this.mList, flags);
        dest.restoreAllowSquashing(prevAllowSquashing);
    }

    /* renamed from: android.content.pm.ProviderInfoList$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<ProviderInfoList> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public ProviderInfoList createFromParcel(Parcel source) {
            return new ProviderInfoList(source);
        }

        @Override // android.os.Parcelable.Creator
        public ProviderInfoList[] newArray(int size) {
            return new ProviderInfoList[size];
        }
    }

    public List<ProviderInfo> getList() {
        return this.mList;
    }

    public static ProviderInfoList fromList(List<ProviderInfo> list) {
        return new ProviderInfoList(list);
    }
}

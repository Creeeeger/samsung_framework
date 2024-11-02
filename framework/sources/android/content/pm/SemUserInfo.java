package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;

/* loaded from: classes.dex */
public class SemUserInfo implements Parcelable {
    public static final Parcelable.Creator<SemUserInfo> CREATOR = new Parcelable.Creator<SemUserInfo>() { // from class: android.content.pm.SemUserInfo.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SemUserInfo createFromParcel(Parcel source) {
            return new SemUserInfo(source);
        }

        @Override // android.os.Parcelable.Creator
        public SemUserInfo[] newArray(int size) {
            return new SemUserInfo[size];
        }
    };
    public static final int FLAG_BMODE = 65536;
    public int flags;
    public int id;
    public String name;

    /* synthetic */ SemUserInfo(Parcel parcel, SemUserInfoIA semUserInfoIA) {
        this(parcel);
    }

    public SemUserInfo(UserInfo ui) {
        if (ui != null) {
            this.id = ui.id;
            this.name = ui.name;
            this.flags = ui.flags;
            return;
        }
        throw new IllegalArgumentException("UserInfo is null");
    }

    public UserHandle getUserHandle() {
        return new UserHandle(this.id);
    }

    public boolean isSecondNumberMode() {
        return (this.flags & 65536) != 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int parcelableFlags) {
        dest.writeInt(this.id);
        dest.writeString(this.name);
        dest.writeInt(this.flags);
    }

    public String toString() {
        return "SemUserInfo{" + this.id + ":" + Integer.toHexString(this.flags) + "}";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: android.content.pm.SemUserInfo$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<SemUserInfo> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SemUserInfo createFromParcel(Parcel source) {
            return new SemUserInfo(source);
        }

        @Override // android.os.Parcelable.Creator
        public SemUserInfo[] newArray(int size) {
            return new SemUserInfo[size];
        }
    }

    private SemUserInfo(Parcel source) {
        this.id = source.readInt();
        this.name = source.readString();
        this.flags = source.readInt();
    }
}

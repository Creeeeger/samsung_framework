package android.app.usage;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class StorageStats implements Parcelable {
    public static final Parcelable.Creator<StorageStats> CREATOR = new Parcelable.Creator<StorageStats>() { // from class: android.app.usage.StorageStats.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public StorageStats createFromParcel(Parcel in) {
            return new StorageStats(in);
        }

        @Override // android.os.Parcelable.Creator
        public StorageStats[] newArray(int size) {
            return new StorageStats[size];
        }
    };
    public long cacheBytes;
    public long codeBytes;
    public long dataBytes;
    public long externalCacheBytes;

    public long getAppBytes() {
        return this.codeBytes;
    }

    public long getDataBytes() {
        return this.dataBytes;
    }

    public long getCacheBytes() {
        return this.cacheBytes;
    }

    public long getExternalCacheBytes() {
        return this.externalCacheBytes;
    }

    public StorageStats() {
    }

    public StorageStats(Parcel in) {
        this.codeBytes = in.readLong();
        this.dataBytes = in.readLong();
        this.cacheBytes = in.readLong();
        this.externalCacheBytes = in.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(this.codeBytes);
        dest.writeLong(this.dataBytes);
        dest.writeLong(this.cacheBytes);
        dest.writeLong(this.externalCacheBytes);
    }

    /* renamed from: android.app.usage.StorageStats$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<StorageStats> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public StorageStats createFromParcel(Parcel in) {
            return new StorageStats(in);
        }

        @Override // android.os.Parcelable.Creator
        public StorageStats[] newArray(int size) {
            return new StorageStats[size];
        }
    }
}

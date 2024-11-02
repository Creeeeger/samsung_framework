package com.samsung.android.chimera;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;

@SystemApi(client = SystemApi.Client.MODULE_LIBRARIES)
/* loaded from: classes5.dex */
public class PSIAvailableMem implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.samsung.android.chimera.PSIAvailableMem.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public PSIAvailableMem createFromParcel(Parcel in) {
            return new PSIAvailableMem(in);
        }

        @Override // android.os.Parcelable.Creator
        public PSIAvailableMem[] newArray(int size) {
            return new PSIAvailableMem[size];
        }
    };
    long availMem;
    long cached;
    long checkTime;
    long running;

    /* synthetic */ PSIAvailableMem(Parcel parcel, PSIAvailableMemIA pSIAvailableMemIA) {
        this(parcel);
    }

    @SystemApi(client = SystemApi.Client.MODULE_LIBRARIES)
    public PSIAvailableMem(long availMem, long running, long cached, long checkTime) {
        this.availMem = availMem;
        this.running = running;
        this.cached = cached;
        this.checkTime = checkTime;
    }

    private PSIAvailableMem(Parcel in) {
        readFromParcel(in);
    }

    /* renamed from: com.samsung.android.chimera.PSIAvailableMem$1 */
    /* loaded from: classes5.dex */
    class AnonymousClass1 implements Parcelable.Creator {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public PSIAvailableMem createFromParcel(Parcel in) {
            return new PSIAvailableMem(in);
        }

        @Override // android.os.Parcelable.Creator
        public PSIAvailableMem[] newArray(int size) {
            return new PSIAvailableMem[size];
        }
    }

    public void readFromParcel(Parcel in) {
        this.availMem = in.readLong();
        this.running = in.readLong();
        this.cached = in.readLong();
        this.checkTime = in.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(this.availMem);
        dest.writeLong(this.running);
        dest.writeLong(this.cached);
        dest.writeLong(this.checkTime);
    }

    @SystemApi(client = SystemApi.Client.MODULE_LIBRARIES)
    public long getAvailMem() {
        return this.availMem;
    }

    @SystemApi(client = SystemApi.Client.MODULE_LIBRARIES)
    public long getRunning() {
        return this.running;
    }

    @SystemApi(client = SystemApi.Client.MODULE_LIBRARIES)
    public long getCached() {
        return this.cached;
    }

    @SystemApi(client = SystemApi.Client.MODULE_LIBRARIES)
    public long getCheckTime() {
        return this.checkTime;
    }
}

package android.telephony.mbms;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes3.dex */
public final class StreamingServiceInfo extends ServiceInfo implements Parcelable {
    public static final Parcelable.Creator<StreamingServiceInfo> CREATOR = new Parcelable.Creator<StreamingServiceInfo>() { // from class: android.telephony.mbms.StreamingServiceInfo.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public StreamingServiceInfo createFromParcel(Parcel source) {
            return new StreamingServiceInfo(source);
        }

        @Override // android.os.Parcelable.Creator
        public StreamingServiceInfo[] newArray(int size) {
            return new StreamingServiceInfo[size];
        }
    };

    /* synthetic */ StreamingServiceInfo(Parcel parcel, StreamingServiceInfoIA streamingServiceInfoIA) {
        this(parcel);
    }

    @SystemApi
    public StreamingServiceInfo(Map<Locale, String> names, String className, List<Locale> locales, String serviceId, Date start, Date end) {
        super(names, className, locales, serviceId, start, end);
    }

    /* renamed from: android.telephony.mbms.StreamingServiceInfo$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<StreamingServiceInfo> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public StreamingServiceInfo createFromParcel(Parcel source) {
            return new StreamingServiceInfo(source);
        }

        @Override // android.os.Parcelable.Creator
        public StreamingServiceInfo[] newArray(int size) {
            return new StreamingServiceInfo[size];
        }
    }

    private StreamingServiceInfo(Parcel in) {
        super(in);
    }

    @Override // android.telephony.mbms.ServiceInfo, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
